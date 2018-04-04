;;; BUILT FROM PLOTTING CODE FOR ONE CASE, JUST BY ADDING LOOPS
;;; ONLY A LITTLE MORE TIME SPENT, HUGE AMOUNT OF DATA OPENED TO EYEBALL


pro go


;;; I ALWAYS START WITH A BIG DATA GRAB -----------------------

restore, file='mudcore.idl.sav' ;;; fields: data structure, time is field02
time = data.field02 / 1000. ;;; kA units
timecolor = bytscl(-time) 
NT = n_elements(time)

; Names in an order that groups related elements
varnames = [ 'Fe','Ti','Al','Br','CA','Mo','SI','S','CL','K','CR','MN','CO','AG','SN','TE','BA']
NVARS = n_elements(varnames)

; A few clips of outlier values
data.mn = data.mn < 2000
data.s = data.s < 1e4



;;;;;;;;;;; MAKE A LOOP
;;; 1 page per chemical element. 

for i1 = 0, NVARS-1 do begin
   name = varnames[i1]



;;;;;; All this was cultivated for one case, then loop simply added 

;;;;;;;;;;; PAGE DESIGN: CONTAINERS AND LABELS FOR DESIRED OUTPUTS
;;; Time series plot at top, then histogram, then scatterplots below
   !p.multi=[0,1,6] ;;; for time series plot across top


; Time series
   error = execute('plot, time, data.' + name + ">0, xtit='Age (ky)', tit='" + name +"',/nodata")
   error = execute('for i=0,NT-1 do oplot, [time[i]], [data.' + name + "[i]>0], " + $
                   "psym=3, symsize=1, color = timecolor[i]")

; Histogram
   note = ''
   if (name eq 'MN') then note = 'NOTE: MN outliers clipped at 2000' 
   if (name eq 'S') then note = 'NOTE: S outliers clipped at 1e4' 
   error = execute('histoplot, data.' + name + ">0, tit='" + name +" "+note+"'")

   loadct, 39 ;;; fix color table it messes with

; scatterplots of other chemical elements, 16 to a page 
   !p.multi=[16,4,6]
   for i2 = 0, NVARS-1 do begin
      if(i2 ne i1) then begin
         do_me = 'plot, data.' +varnames[i1] + ">0, data." + varnames[i2] + ">0, /nodata," + $
                         "xtit='" +varnames[i1]+"'" + ", ytit='"+varnames[i2]+"'"

         print, 'command is: ', do_me
         error = execute(do_me)

         do_me = 'for i=NT-1,0,-1 do oplot, [data.' +varnames[i1] + "[i]>0], " + $
                         "[data." + varnames[i2] + "[i]>0], psym=3, symsize=1, " + $
                         "color = timecolor[i]"
         error = execute(do_me)
      endif
   endfor



print, varnames[i1]
stop

endfor ;; i1 loop
end

