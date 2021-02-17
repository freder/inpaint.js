(module
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_f64 (func (param i32 i32 i32 i32) (result f64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1276) "<")
 (data (i32.const 1288) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1372) ",")
 (data (i32.const 1384) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1420) ",")
 (data (i32.const 1432) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 1468) "<")
 (data (i32.const 1480) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1532) "<")
 (data (i32.const 1544) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1596) "<")
 (data (i32.const 1608) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1692) "<")
 (data (i32.const 1704) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1792) "\08\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1820) "\01\t\00\00\02")
 (data (i32.const 1836) "\02\1a\00\00\00\00\00\00\02\t\00\00\00\00\00\00\01\1a\00\00\02")
 (global $src/index/Int32Array_ID i32 (i32.const 3))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1792))
 (export "Int32Array_ID" (global $src/index/Int32Array_ID))
 (export "inpaint" (func $src/index/inpaint))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=8
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $4
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $4
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
    local.set $1
   end
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 1872
  i32.const 0
  i32.store
  i32.const 3440
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 23
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.shl
    i32.const 1872
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 1872
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|1
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1872
  i32.const 3444
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1872
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1168
   i32.const 1296
   i32.const 462
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 4
    i32.shl
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.ctz
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
   else
    local.get $1
   end
   i32.const 4
   memory.size
   local.tee $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.set $2
  end
  local.get $2
  i32.load
  drop
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 125
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  local.get $1
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/tcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tcms/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 6
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $4
      i32.const 2
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1860
  i32.ge_u
  if
   local.get $1
   local.get $1
   i32.load
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  end
  local.get $2
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $8
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1056
    i32.const 1392
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $6
   local.set $3
   local.get $1
   local.get $2
   i32.shl
   local.tee $9
   local.set $4
   local.get $6
   i32.const 20
   i32.sub
   local.set $2
   block $__inlined_func$~lib/rt/tcms/__renew
    local.get $6
    i32.const 1860
    i32.lt_u
    if
     local.get $4
     local.get $2
     i32.load offset=12
     call $~lib/rt/tcms/__new
     local.tee $1
     local.get $3
     local.get $4
     local.get $2
     i32.load offset=16
     local.tee $2
     local.get $2
     local.get $4
     i32.gt_u
     select
     call $~lib/memory/memory.copy
     br $__inlined_func$~lib/rt/tcms/__renew
    end
    local.get $4
    i32.const 1073741804
    i32.ge_u
    if
     i32.const 1168
     i32.const 1232
     i32.const 143
     i32.const 31
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/rt/tcms/total
    local.get $2
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.sub
    global.set $~lib/rt/tcms/total
    local.get $3
    i32.const 16
    i32.sub
    local.set $2
    local.get $4
    i32.const 16
    i32.add
    local.set $3
    global.get $~lib/rt/tlsf/ROOT
    i32.eqz
    if
     call $~lib/rt/tlsf/initialize
    end
    local.get $2
    i32.const 1860
    i32.lt_u
    if
     global.get $~lib/rt/tlsf/ROOT
     local.get $2
     i32.const 4
     i32.sub
     local.set $1
     local.get $2
     i32.const 15
     i32.and
     i32.eqz
     i32.const 0
     local.get $2
     select
     if
      local.get $1
      i32.load
      drop
     end
     local.get $1
     local.get $3
     call $~lib/rt/tlsf/moveBlock
     local.set $1
    else
     block $__inlined_func$~lib/rt/tlsf/reallocateBlock
      global.get $~lib/rt/tlsf/ROOT
      local.set $5
      local.get $2
      i32.const 4
      i32.sub
      local.set $1
      local.get $2
      i32.const 15
      i32.and
      i32.eqz
      i32.const 0
      local.get $2
      select
      if
       local.get $1
       i32.load
       drop
      end
      block $folding-inner0
       local.get $3
       call $~lib/rt/tlsf/prepareSize
       local.tee $2
       local.get $1
       i32.load
       local.tee $10
       i32.const -4
       i32.and
       local.tee $7
       i32.le_u
       br_if $folding-inner0
       local.get $1
       i32.const 4
       i32.add
       local.get $1
       i32.load
       i32.const -4
       i32.and
       i32.add
       local.tee $11
       i32.load
       local.tee $12
       i32.const 1
       i32.and
       if
        local.get $2
        local.get $7
        i32.const 4
        i32.add
        local.get $12
        i32.const -4
        i32.and
        i32.add
        local.tee $7
        i32.le_u
        if
         local.get $5
         local.get $11
         call $~lib/rt/tlsf/removeBlock
         local.get $1
         local.get $7
         local.get $10
         i32.const 3
         i32.and
         i32.or
         i32.store
         br $folding-inner0
        end
       end
       local.get $5
       local.get $1
       local.get $3
       call $~lib/rt/tlsf/moveBlock
       local.set $1
       br $__inlined_func$~lib/rt/tlsf/reallocateBlock
      end
      local.get $5
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/prepareBlock
     end
    end
    local.get $1
    i32.const 20
    i32.add
    local.tee $1
    i32.const 20
    i32.sub
    local.tee $2
    local.get $4
    i32.store offset=16
    local.get $2
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $2
    i32.load offset=8
    local.tee $4
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    local.set $3
    local.get $4
    local.get $3
    i32.store offset=4
    global.get $~lib/rt/tcms/total
    local.get $2
    i32.load
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.add
    global.set $~lib/rt/tcms/total
   end
   local.get $1
   local.get $8
   i32.add
   local.get $9
   local.get $8
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $6
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $9
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $src/HeapQueue/HeapQueue#push (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.load offset=12
  local.tee $5
  i32.const 1
  i32.add
  local.set $4
  local.get $3
  local.get $4
  i32.const 3
  call $~lib/array/ensureSize
  local.get $3
  i32.load offset=4
  local.get $5
  i32.const 3
  i32.shl
  i32.add
  local.get $1
  f64.store
  local.get $3
  local.get $4
  i32.store offset=12
  local.get $0
  i32.load offset=8
  local.get $2
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.load offset=4
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  loop $while-continue|0
   local.get $2
   i32.const 0
   i32.gt_s
   if
    local.get $0
    i32.load offset=4
    i32.load offset=4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $0
    i32.load offset=4
    i32.load offset=4
    local.get $2
    i32.const 1
    i32.sub
    i32.const 1
    i32.shr_u
    local.tee $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.sub
    f64.const 0
    f64.lt
    if
     local.get $3
     i32.const 3
     i32.shl
     local.tee $4
     local.get $0
     i32.load offset=4
     i32.load offset=4
     i32.add
     f64.load
     local.set $1
     local.get $3
     i32.const 2
     i32.shl
     local.tee $5
     local.get $0
     i32.load offset=8
     i32.load offset=4
     i32.add
     i32.load
     local.set $6
     local.get $4
     local.get $0
     i32.load offset=4
     i32.load offset=4
     i32.add
     local.get $2
     i32.const 3
     i32.shl
     local.tee $4
     local.get $0
     i32.load offset=4
     i32.load offset=4
     i32.add
     f64.load
     f64.store
     local.get $5
     local.get $0
     i32.load offset=8
     i32.load offset=4
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     local.tee $2
     local.get $0
     i32.load offset=8
     i32.load offset=4
     i32.add
     i32.load
     i32.store
     local.get $4
     local.get $0
     i32.load offset=4
     i32.load offset=4
     i32.add
     local.get $1
     f64.store
     local.get $2
     local.get $0
     i32.load offset=8
     i32.load offset=4
     i32.add
     local.get $6
     i32.store
     local.get $3
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 4
  local.get $0
  i32.shl
  local.tee $0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $2
  i32.const 16
  local.get $1
  call $~lib/rt/tcms/__new
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
 )
 (func $src/HeapQueue/HeapQueue#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  i32.load offset=4
  i32.load
  local.set $8
  block $folding-inner0
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.load offset=12
   local.tee $4
   i32.const 1
   i32.lt_s
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 3
   i32.shl
   i32.add
   f64.load
   local.set $5
   local.get $1
   local.get $4
   i32.store offset=12
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.lt_s
   br_if $folding-inner0
   local.get $4
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $1
   local.get $4
   local.get $2
   i32.store offset=12
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.sub
   i32.store
   local.get $0
   i32.load offset=4
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $0
    i32.load offset=4
    i32.load offset=4
    local.get $5
    f64.store
    local.get $0
    i32.load offset=8
    i32.load offset=4
    local.get $1
    i32.store
    local.get $0
    i32.load offset=4
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $3
     i32.const 1
     i32.shl
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.add
     local.set $4
     local.get $1
     local.set $2
     local.get $3
     local.tee $1
     local.tee $6
     local.get $4
     local.get $2
     local.get $1
     local.get $2
     local.get $7
     i32.le_s
     if (result i32)
      local.get $0
      i32.load offset=4
      i32.load offset=4
      local.get $2
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.get $0
      i32.load offset=4
      i32.load offset=4
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      f64.load
      f64.sub
      f64.const 0
      f64.lt
     else
      i32.const 0
     end
     select
     local.tee $3
     local.get $4
     local.get $7
     i32.le_s
     if (result i32)
      local.get $0
      i32.load offset=4
      i32.load offset=4
      local.get $4
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.get $0
      i32.load offset=4
      i32.load offset=4
      local.get $3
      i32.const 3
      i32.shl
      i32.add
      f64.load
      f64.sub
      f64.const 0
      f64.lt
     else
      i32.const 0
     end
     select
     local.tee $3
     i32.ne
     if
      local.get $3
      i32.const 3
      i32.shl
      local.tee $1
      local.get $0
      i32.load offset=4
      i32.load offset=4
      i32.add
      f64.load
      local.set $5
      local.get $3
      i32.const 2
      i32.shl
      local.tee $4
      local.get $0
      i32.load offset=8
      i32.load offset=4
      i32.add
      i32.load
      local.set $2
      local.get $1
      local.get $0
      i32.load offset=4
      i32.load offset=4
      i32.add
      local.get $6
      i32.const 3
      i32.shl
      local.tee $1
      local.get $0
      i32.load offset=4
      i32.load offset=4
      i32.add
      f64.load
      f64.store
      local.get $4
      local.get $0
      i32.load offset=8
      i32.load offset=4
      i32.add
      local.get $6
      i32.const 2
      i32.shl
      local.tee $4
      local.get $0
      i32.load offset=8
      i32.load offset=4
      i32.add
      i32.load
      i32.store
      local.get $1
      local.get $0
      i32.load offset=4
      i32.load offset=4
      i32.add
      local.get $5
      f64.store
      local.get $4
      local.get $0
      i32.load offset=8
      i32.load offset=4
      i32.add
      local.get $2
      i32.store
      br $while-continue|0
     end
    end
   end
   local.get $8
   return
  end
  i32.const 1440
  i32.const 1392
  i32.const 269
  i32.const 21
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1488
   i32.const 1552
   i32.const 710
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $src/index/eikonal (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  local.get $3
  i32.load offset=4
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $5
  local.get $3
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $6
  local.get $2
  i32.load offset=4
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $2
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  if (result f64)
   f64.const 1e6
   local.get $6
   f64.const 1
   f64.add
   local.get $0
   select
  else
   local.get $0
   if (result f64)
    local.get $5
    f64.const 1
    f64.add
   else
    local.get $5
    local.get $6
    f64.add
    f64.const 2
    local.get $5
    local.get $6
    f64.sub
    local.tee $4
    local.get $4
    f64.mul
    f64.sub
    f64.sqrt
    local.tee $7
    f64.sub
    f64.const 0.5
    f64.mul
    local.tee $4
    local.get $6
    f64.ge
    i32.const 0
    local.get $4
    local.get $5
    f64.ge
    select
    if (result f64)
     local.get $4
    else
     local.get $4
     local.get $7
     f64.add
     local.tee $4
     local.get $6
     f64.ge
     i32.const 0
     local.get $4
     local.get $5
     f64.ge
     select
     if (result f64)
      local.get $4
     else
      f64.const 1e6
     end
    end
   end
  end
 )
 (func $src/index/grad_func (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result f64)
  local.get $3
  i32.load offset=4
  local.get $1
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.const 2
  i32.ne
  if (result f64)
   local.get $3
   i32.load offset=4
   local.get $1
   local.get $2
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   i32.load
   i32.const 2
   i32.ne
   if (result f64)
    local.get $0
    i32.load offset=4
    local.get $1
    local.get $2
    i32.add
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $0
    i32.load offset=4
    local.get $1
    local.get $2
    i32.sub
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.sub
    f64.const 0.5
    f64.mul
   else
    local.get $0
    i32.load offset=4
    local.get $1
    local.get $2
    i32.add
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.sub
   end
  else
   local.get $3
   i32.load offset=4
   local.get $1
   local.get $2
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   i32.load
   i32.const 2
   i32.ne
   if (result f64)
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $0
    i32.load offset=4
    local.get $1
    local.get $2
    i32.sub
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.sub
   else
    f64.const 0
   end
  end
 )
 (func $src/index/inpaintChannel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.get $0
  local.get $1
  i32.mul
  local.tee $8
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $7
  i32.const 12
  i32.const 7
  call $~lib/rt/tcms/__new
  local.get $8
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $10
  loop $for-loop|0
   local.get $6
   local.get $8
   i32.lt_s
   if
    local.get $3
    i32.load offset=4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    if
     local.get $7
     i32.load offset=4
     local.get $6
     i32.const 1
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $7
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $7
     i32.load offset=4
     local.get $6
     i32.const 1
     i32.sub
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $7
     i32.load offset=4
     local.get $0
     local.get $6
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $7
     i32.load offset=4
     local.get $6
     local.get $0
     i32.sub
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $6
  loop $for-loop|1
   local.get $6
   local.get $8
   i32.lt_s
   if
    local.get $6
    i32.const 2
    i32.shl
    local.tee $11
    local.get $7
    i32.load offset=4
    i32.add
    local.get $11
    local.get $7
    i32.load offset=4
    i32.add
    i32.load
    i32.const 1
    i32.shl
    local.get $11
    local.get $3
    i32.load offset=4
    i32.add
    i32.load
    local.get $11
    local.get $7
    i32.load offset=4
    i32.add
    i32.load
    i32.xor
    i32.sub
    i32.store
    local.get $11
    local.get $7
    i32.load offset=4
    i32.add
    i32.load
    i32.const 2
    i32.eq
    if
     local.get $10
     i32.load offset=4
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     f64.const 1e6
     f64.store
    else
     local.get $7
     i32.load offset=4
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.eq
     if
      local.get $4
      local.get $10
      i32.load offset=4
      local.get $6
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.get $6
      call $src/HeapQueue/HeapQueue#push
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  call $~lib/array/Array<i32>#constructor
  local.set $11
  i32.const -5
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.const 5
   i32.le_s
   if
    i32.const 0
    i32.const 25
    local.get $3
    local.get $3
    i32.mul
    i32.sub
    f64.convert_i32_s
    f64.sqrt
    f64.floor
    i32.trunc_f64_s
    local.tee $8
    i32.sub
    local.set $6
    loop $for-loop|3
     local.get $6
     local.get $8
     i32.le_s
     if
      local.get $11
      local.get $3
      local.get $0
      local.get $6
      i32.mul
      i32.add
      call $~lib/array/Array<i32>#push
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|3
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  i32.const 2
  i32.const 6
  call $~lib/rt/__newArray
  local.tee $3
  i32.load offset=4
  drop
  local.get $3
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.sub
  i32.store
  local.get $3
  i32.load offset=4
  i32.const -1
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  i32.store offset=8
  local.get $3
  i32.load offset=4
  i32.const 1
  i32.store offset=12
  local.get $3
  local.set $6
  loop $while-continue|4
   local.get $4
   i32.load
   if
    local.get $4
    call $src/HeapQueue/HeapQueue#pop
    local.tee $15
    local.get $0
    i32.rem_s
    local.set $3
    local.get $15
    local.get $0
    i32.div_s
    f64.convert_i32_s
    f64.floor
    local.set $5
    local.get $7
    local.get $15
    i32.const 0
    call $~lib/typedarray/Int32Array#__set
    i32.const 1
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    f64.convert_i32_s
    f64.ge
    i32.const 1
    local.get $3
    local.get $0
    i32.const 1
    i32.sub
    i32.ge_s
    i32.const 1
    local.get $5
    f64.const 1
    f64.le
    local.get $3
    i32.const 1
    i32.le_s
    select
    select
    select
    br_if $while-continue|4
    i32.const 0
    local.set $14
    loop $for-loop|5
     local.get $14
     i32.const 4
     i32.lt_s
     if
      local.get $7
      i32.load offset=4
      local.get $15
      local.get $6
      i32.load offset=4
      local.get $14
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      local.tee $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      if
       i32.const 3
       i32.const 5
       call $~lib/rt/__newArray
       local.tee $8
       i32.load offset=4
       drop
       local.get $3
       local.get $0
       i32.sub
       local.tee $9
       local.get $3
       i32.const 1
       i32.sub
       local.tee $12
       local.get $7
       local.get $10
       call $src/index/eikonal
       local.set $5
       local.get $8
       i32.load offset=4
       local.get $5
       f64.store
       local.get $0
       local.get $3
       i32.add
       local.tee $16
       local.get $12
       local.get $7
       local.get $10
       call $src/index/eikonal
       local.set $5
       local.get $8
       i32.load offset=4
       local.get $5
       f64.store offset=8
       local.get $9
       local.get $3
       i32.const 1
       i32.add
       local.tee $9
       local.get $7
       local.get $10
       call $src/index/eikonal
       local.set $5
       local.get $8
       i32.load offset=4
       local.get $5
       f64.store offset=16
       local.get $16
       local.get $9
       local.get $7
       local.get $10
       call $src/index/eikonal
       local.set $5
       local.get $8
       i32.load offset=4
       local.get $5
       f64.store offset=24
       i32.const 0
       local.set $9
       f64.const inf
       local.set $5
       loop $for-loop|00
        local.get $9
        local.get $8
        i32.load offset=12
        i32.lt_s
        if
         local.get $5
         local.get $8
         i32.load offset=4
         local.get $9
         i32.const 3
         i32.shl
         i32.add
         f64.load
         f64.gt
         if
          local.get $8
          i32.load offset=4
          local.get $9
          i32.const 3
          i32.shl
          i32.add
          f64.load
          local.set $5
         end
         local.get $9
         i32.const 1
         i32.add
         local.set $9
         br $for-loop|00
        end
       end
       local.get $10
       i32.load offset=4
       local.get $3
       i32.const 3
       i32.shl
       i32.add
       local.get $5
       f64.store
       local.get $7
       i32.load offset=4
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 2
       i32.eq
       if
        local.get $7
        i32.load offset=4
        local.get $3
        i32.const 2
        i32.shl
        i32.add
        i32.const 1
        i32.store
        local.get $4
        local.get $10
        i32.load offset=4
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.get $3
        call $src/HeapQueue/HeapQueue#push
        f64.const 0
        local.set $5
        i32.const 0
        local.set $8
        f64.const 0
        local.set $17
        local.get $10
        local.get $3
        i32.const 1
        local.get $7
        call $src/index/grad_func
        local.set $18
        local.get $10
        local.get $3
        local.get $0
        local.get $7
        call $src/index/grad_func
        local.set $19
        local.get $3
        local.get $0
        i32.rem_s
        local.set $16
        local.get $3
        local.get $0
        i32.div_s
        f64.convert_i32_s
        f64.floor
        i32.trunc_f64_s
        local.set $20
        loop $for-loop|01
         local.get $8
         local.get $11
         i32.load offset=12
         i32.lt_s
         if
          block $for-continue|0
           i32.const 1
           local.get $3
           local.get $11
           i32.load offset=4
           local.get $8
           i32.const 2
           i32.shl
           i32.add
           i32.load
           i32.add
           local.tee $9
           local.get $0
           i32.div_s
           f64.convert_i32_s
           f64.floor
           local.tee $13
           local.get $1
           i32.const 1
           i32.sub
           f64.convert_i32_s
           f64.ge
           i32.const 1
           local.get $9
           local.get $0
           i32.rem_s
           local.tee $12
           local.get $0
           i32.const 1
           i32.sub
           i32.ge_s
           i32.const 1
           local.get $13
           f64.const 1
           f64.le
           local.get $12
           i32.const 1
           i32.le_s
           select
           select
           select
           br_if $for-continue|0
           local.get $7
           i32.load offset=4
           local.get $9
           i32.const 2
           i32.shl
           i32.add
           i32.load
           br_if $for-continue|0
           local.get $5
           f64.const 1
           local.get $16
           local.get $12
           i32.sub
           local.tee $12
           local.get $12
           i32.mul
           f64.convert_i32_s
           local.get $20
           f64.convert_i32_s
           local.get $13
           f64.sub
           local.tee $5
           local.get $5
           f64.mul
           f64.add
           local.tee $13
           local.get $13
           f64.sqrt
           f64.mul
           f64.div
           f64.const 1
           local.get $10
           i32.load offset=4
           local.get $9
           i32.const 3
           i32.shl
           i32.add
           f64.load
           local.get $10
           i32.load offset=4
           local.get $3
           i32.const 3
           i32.shl
           i32.add
           f64.load
           f64.sub
           f64.abs
           f64.const 1
           f64.add
           f64.div
           f64.mul
           local.get $12
           f64.convert_i32_s
           local.get $18
           f64.mul
           local.get $5
           local.get $19
           f64.mul
           f64.add
           f64.abs
           f64.mul
           f64.const 1e-06
           f64.add
           local.tee $13
           local.get $2
           i32.load offset=4
           local.get $9
           i32.const 2
           i32.shl
           i32.add
           i32.load
           f64.convert_i32_s
           f64.mul
           f64.add
           local.set $5
           local.get $17
           local.get $13
           f64.add
           local.set $17
          end
          local.get $8
          i32.const 1
          i32.add
          local.set $8
          br $for-loop|01
         end
        end
        local.get $2
        local.get $3
        local.get $5
        local.get $17
        f64.div
        i32.trunc_f64_s
        call $~lib/typedarray/Int32Array#__set
       end
      end
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      br $for-loop|5
     end
    end
    br $while-continue|4
   end
  end
 )
 (func $src/index/inpaint (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.get $0
  local.get $1
  i32.mul
  local.tee $6
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $7
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.get $6
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $8
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.get $6
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $9
  loop $for-loop|0
   local.get $5
   local.get $6
   i32.lt_s
   if
    local.get $5
    i32.const 2
    i32.shl
    local.tee $4
    local.get $7
    i32.load offset=4
    i32.add
    local.get $2
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $4
    local.get $8
    i32.load offset=4
    i32.add
    local.get $2
    i32.load offset=4
    local.get $4
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $4
    local.get $9
    i32.load offset=4
    i32.add
    local.get $2
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  i32.const 0
  i32.store
  i32.const 16
  i32.const 5
  call $~lib/rt/tcms/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.store offset=8
  local.get $5
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $10
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $5
  local.get $10
  i32.store
  local.get $5
  local.get $10
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.store offset=8
  local.get $5
  i32.const 0
  i32.store offset=12
  local.get $4
  local.get $5
  i32.store offset=4
  local.get $4
  call $~lib/array/Array<i32>#constructor
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $7
  local.get $3
  local.get $4
  call $src/index/inpaintChannel
  local.get $0
  local.get $1
  local.get $8
  local.get $3
  local.get $4
  call $src/index/inpaintChannel
  local.get $0
  local.get $1
  local.get $9
  local.get $3
  local.get $4
  call $src/index/inpaintChannel
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $6
   i32.lt_s
   if
    local.get $2
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    local.get $7
    i32.load offset=4
    i32.add
    i32.load
    i32.store
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    local.get $8
    i32.load offset=4
    i32.add
    i32.load
    i32.store
    local.get $2
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    local.get $9
    i32.load offset=4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 1616
    i32.const 1232
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/tcms/Object#unlink
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $2
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink
    end
    local.get $2
    local.get $1
    i32.load offset=8
    local.tee $3
    i32.store offset=8
    local.get $3
    local.get $2
    local.get $3
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 1712
   i32.const 1232
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/tcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    drop
    br $__inlined_func$~lib/rt/tcms/Object#unlink
   end
   local.get $1
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  global.get $~lib/rt/tcms/white
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/rt/tcms/white
  i32.const 1472
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink
    i32.const 1472
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1476
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink
    end
    local.get $0
    i32.const 1476
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1472
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1476
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1468
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1468
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/white
  i32.const 1040
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink1
    i32.const 1040
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1044
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink1
    end
    local.get $0
    i32.const 1044
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1040
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1044
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1036
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1036
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/white
  i32.const 1424
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink3
    i32.const 1424
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1428
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink3
    end
    local.get $0
    i32.const 1428
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1424
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1428
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1420
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1420
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/white
  i32.const 1152
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink5
    i32.const 1152
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1156
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink5
    end
    local.get $0
    i32.const 1156
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1152
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1156
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1148
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1148
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/white
  i32.const 1600
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink7
    i32.const 1600
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1604
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink7
    end
    local.get $0
    i32.const 1604
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1600
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1604
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1596
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1596
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/white
  i32.const 1696
  i32.load
  i32.const 3
  i32.and
  i32.eq
  if
   block $__inlined_func$~lib/rt/tcms/Object#unlink9
    i32.const 1696
    i32.load
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     i32.const 1700
     i32.load
     drop
     br $__inlined_func$~lib/rt/tcms/Object#unlink9
    end
    local.get $0
    i32.const 1700
    i32.load
    local.tee $1
    i32.store offset=8
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/tcms/toSpace
   local.tee $1
   i32.load offset=8
   local.set $0
   i32.const 1696
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   i32.or
   i32.store
   i32.const 1700
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1692
   i32.or
   i32.store offset=4
   local.get $1
   i32.const 1692
   i32.store offset=8
  end
  global.get $~lib/rt/tcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    drop
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  global.get $~lib/rt/tcms/toSpace
  local.tee $5
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
   local.get $0
   local.get $5
   i32.ne
   if
    local.get $0
    i32.load offset=4
    drop
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $2
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|2
   local.get $0
   local.get $2
   i32.ne
   if
    local.get $0
    i32.load offset=4
    drop
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $0
    i32.const 1860
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/tcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $4
     i32.const 1860
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      i32.const 4
      i32.sub
      local.set $3
      local.get $4
      i32.const 15
      i32.and
      i32.eqz
      i32.const 0
      local.get $4
      select
      if
       local.get $3
       i32.load
       drop
      end
      local.get $3
      local.get $3
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $3
      call $~lib/rt/tlsf/insertBlock
     end
    end
    local.set $0
    br $while-continue|2
   end
  end
  local.get $2
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $2
  i32.store offset=8
  local.get $5
  global.set $~lib/rt/tcms/fromSpace
  local.get $2
  global.set $~lib/rt/tcms/toSpace
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner2
   block $folding-inner1
    block $invalid
     block $src/HeapQueue/HeapQueue
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $folding-inner2 $src/HeapQueue/HeapQueue $folding-inner1 $folding-inner1 $folding-inner2 $invalid
       end
       return
      end
      return
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     if
      local.get $1
      if
       global.get $~lib/rt/tcms/white
       local.get $1
       i32.const 20
       i32.sub
       local.tee $1
       i32.load offset=4
       i32.const 3
       i32.and
       i32.eq
       if
        block $__inlined_func$~lib/rt/tcms/Object#unlink
         local.get $1
         i32.load offset=4
         i32.const -4
         i32.and
         local.tee $2
         i32.eqz
         if
          local.get $1
          i32.load offset=8
          drop
          br $__inlined_func$~lib/rt/tcms/Object#unlink
         end
         local.get $2
         local.get $1
         i32.load offset=8
         local.tee $3
         i32.store offset=8
         local.get $3
         local.get $2
         local.get $3
         i32.load offset=4
         i32.const 3
         i32.and
         i32.or
         i32.store offset=4
        end
        global.get $~lib/rt/tcms/toSpace
        local.tee $3
        i32.load offset=8
        local.set $2
        local.get $1
        local.get $3
        global.get $~lib/rt/tcms/white
        i32.eqz
        i32.or
        i32.store offset=4
        local.get $1
        local.get $2
        i32.store offset=8
        local.get $2
        local.get $1
        local.get $2
        i32.load offset=4
        i32.const 3
        i32.and
        i32.or
        i32.store offset=4
        local.get $3
        local.get $1
        i32.store offset=8
       end
      end
     end
     local.get $0
     i32.load offset=8
     local.tee $0
     if
      local.get $0
      if
       global.get $~lib/rt/tcms/white
       local.get $0
       i32.const 20
       i32.sub
       local.tee $0
       i32.load offset=4
       i32.const 3
       i32.and
       i32.eq
       if
        block $__inlined_func$~lib/rt/tcms/Object#unlink1
         local.get $0
         i32.load offset=4
         i32.const -4
         i32.and
         local.tee $1
         i32.eqz
         if
          local.get $0
          i32.load offset=8
          drop
          br $__inlined_func$~lib/rt/tcms/Object#unlink1
         end
         local.get $1
         local.get $0
         i32.load offset=8
         local.tee $2
         i32.store offset=8
         local.get $2
         local.get $1
         local.get $2
         i32.load offset=4
         i32.const 3
         i32.and
         i32.or
         i32.store offset=4
        end
        global.get $~lib/rt/tcms/toSpace
        local.tee $2
        i32.load offset=8
        local.set $1
        local.get $0
        local.get $2
        global.get $~lib/rt/tcms/white
        i32.eqz
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.store offset=8
        local.get $1
        local.get $0
        local.get $1
        i32.load offset=4
        i32.const 3
        i32.and
        i32.or
        i32.store offset=4
        local.get $2
        local.get $0
        i32.store offset=8
       end
      end
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load
   local.tee $0
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.const 20
    i32.sub
    local.tee $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.eq
    if
     block $__inlined_func$~lib/rt/tcms/Object#unlink3
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.tee $1
      i32.eqz
      if
       local.get $0
       i32.load offset=8
       drop
       br $__inlined_func$~lib/rt/tcms/Object#unlink3
      end
      local.get $1
      local.get $0
      i32.load offset=8
      local.tee $2
      i32.store offset=8
      local.get $2
      local.get $1
      local.get $2
      i32.load offset=4
      i32.const 3
      i32.and
      i32.or
      i32.store offset=4
     end
     global.get $~lib/rt/tcms/toSpace
     local.tee $2
     i32.load offset=8
     local.set $1
     local.get $0
     local.get $2
     global.get $~lib/rt/tcms/white
     i32.eqz
     i32.or
     i32.store offset=4
     local.get $0
     local.get $1
     i32.store offset=8
     local.get $1
     local.get $0
     local.get $1
     i32.load offset=4
     i32.const 3
     i32.and
     i32.or
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
    end
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.const 20
    i32.sub
    local.tee $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.eq
    if
     block $__inlined_func$~lib/rt/tcms/Object#unlink5
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.tee $1
      i32.eqz
      if
       local.get $0
       i32.load offset=8
       drop
       br $__inlined_func$~lib/rt/tcms/Object#unlink5
      end
      local.get $1
      local.get $0
      i32.load offset=8
      local.tee $2
      i32.store offset=8
      local.get $2
      local.get $1
      local.get $2
      i32.load offset=4
      i32.const 3
      i32.and
      i32.or
      i32.store offset=4
     end
     global.get $~lib/rt/tcms/toSpace
     local.tee $2
     i32.load offset=8
     local.set $1
     local.get $0
     local.get $2
     global.get $~lib/rt/tcms/white
     i32.eqz
     i32.or
     i32.store offset=4
     local.get $0
     local.get $1
     i32.store offset=8
     local.get $1
     local.get $0
     local.get $1
     i32.load offset=4
     i32.const 3
     i32.and
     i32.or
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
    end
   end
  end
 )
 (func $~start
  i32.const 1348
  i32.const 1344
  i32.store
  i32.const 1352
  i32.const 1344
  i32.store
  i32.const 1344
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1668
  i32.const 1664
  i32.store
  i32.const 1672
  i32.const 1664
  i32.store
  i32.const 1664
  global.set $~lib/rt/tcms/pinSpace
  i32.const 1764
  i32.const 1760
  i32.store
  i32.const 1768
  i32.const 1760
  i32.store
  i32.const 1760
  global.set $~lib/rt/tcms/toSpace
 )
)
