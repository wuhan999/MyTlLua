Qr_quuyIa2T='Main'

gg.clearResults() sj={} xgz={} gg.toast("偏移v1.2") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
function Main()
xz=gg.multiChoice({'秒复活（基址）',
'刷怪速度',
'刷怪上限',
'高亮1',
'1',
'退出'},nil,'选择功能')
if xz==nil then else
if xz[1]==true then gn1() end
if xz[2]==true then gn2() end
if xz[3]==true then gn3() end
if xz[4]==true then gn4() end
if xz[5]==true then gn5() end
if xz[6]==true then gn6() end
end end
function gn1()
if gg.getRangesList('libil2cpp.so:bss')[1]==nil then gg.toast('so文件不存在，开启失败') else addr=gg.getRangesList('libil2cpp.so:bss')[1].start+0x2D198
addr = BaAdd(addr)+0x550
addr = BaAdd(addr)+0x40
addr = BaAdd(addr)+0x538
set(addr,0,4,true)
end end


function gn2()
search(1050253722,4,32)
py1(4032,4,60)
py1(1080,4,72)
xg1(1,4,188,true)
end


function gn3()
search(1050253722,4,32)
py1(4032,4,60)
py1(1080,4,72)
xg1(50,4,192,true)
end


function gn4()
search(41209,4,32)
py1(0,4,-8)
py1(0,4,-4)
py1(0,4,4)
py1(1033410713,4,12)
py1(1033410713,4,16)
xg1(400,16,12,true)
xg1(400,16,16,true)
xg1(400,16,15065096,true)
xg1(400,16,15065100,true)
xg1(400,16,15065104,true)
xg1(400,16,8,true)
end


function gn5()
search(41209,4,32)
py1(1033410713,4,12)
py1(1033410713,4,172)
py1(1033410713,4,176)
py1(1033410713,4,180)
py1(1033410713,4,184)
xg1(400,16,12,true)
xg1(400,16,16,true)
xg1(400,16,15065096,true)
xg1(400,16,15065100,true)
xg1(400,16,15065104,true)
xg1(400,16,8,true)
end


function gn6()
os.exit(print('偏移模板'))
end

while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
_G[Qr_quuyIa2T]()
end end