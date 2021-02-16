(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_f32 (func (param i32 i32 i32 i32) (result f32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_f32_i32_=>_none (func (param i32 f32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
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
 (data (i32.const 1820) "\01\t\00\00\02\00\00\00\01\19\00\00\02")
 (data (i32.const 1844) "\02\19\00\00\00\00\00\00\02\t")
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
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 273
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 275
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 288
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
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
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
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
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1296
    i32.const 224
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
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
   if (result i32)
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
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 240
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
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
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 256
   i32.const 14
   call $~lib/builtins/abort
   unreachable
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
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1296
   i32.const 381
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1296
    i32.const 388
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1296
    i32.const 401
    i32.const 5
    call $~lib/builtins/abort
    unreachable
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
  local.get $4
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
  i32.const 12
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $0
  i32.const 12
  i32.le_u
  select
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
   i32.const 31
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
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
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
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
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
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1296
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
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
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1296
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
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
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
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
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1296
    i32.const 500
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1296
   i32.const 502
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $1
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $1
 )
 (func $~lib/rt/tcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $0
  call $~lib/rt/tcms/Object#set:next
  local.get $1
  local.get $0
  i32.store offset=8
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
  local.get $2
  global.get $~lib/rt/tcms/fromSpace
  global.get $~lib/rt/tcms/white
  call $~lib/rt/tcms/Object#linkTo
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 268435455
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
  i32.const 2
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
  i32.const 7
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
 (func $~lib/typedarray/Int32Array#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/typedarray/Int32Array#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/typedarray/Float32Array#__uset (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/typedarray/Float32Array#__uget (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
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
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
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
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $2
 )
 (func $~lib/rt/tcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $0
  i32.const 1860
  i32.lt_u
  if
   local.get $1
   local.get $2
   i32.load offset=12
   call $~lib/rt/tcms/__new
   local.tee $3
   local.get $0
   local.get $1
   local.get $2
   i32.load offset=16
   local.tee $0
   local.get $0
   local.get $1
   i32.gt_u
   select
   call $~lib/memory/memory.copy
   local.get $3
   return
  end
  local.get $1
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
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  local.get $1
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $0
  i32.const 1860
  i32.lt_u
  if
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $2
   call $~lib/rt/tlsf/moveBlock
   local.set $0
  else
   block $__inlined_func$~lib/rt/tlsf/reallocateBlock
    global.get $~lib/rt/tlsf/ROOT
    local.set $3
    local.get $0
    call $~lib/rt/tlsf/checkUsedBlock
    local.set $0
    block $folding-inner0
     local.get $2
     call $~lib/rt/tlsf/prepareSize
     local.tee $5
     local.get $0
     i32.load
     local.tee $6
     i32.const -4
     i32.and
     local.tee $4
     i32.le_u
     br_if $folding-inner0
     local.get $0
     i32.const 4
     i32.add
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.add
     local.tee $7
     i32.load
     local.tee $8
     i32.const 1
     i32.and
     if
      local.get $5
      local.get $4
      i32.const 4
      i32.add
      local.get $8
      i32.const -4
      i32.and
      i32.add
      local.tee $4
      i32.le_u
      if
       local.get $3
       local.get $7
       call $~lib/rt/tlsf/removeBlock
       local.get $0
       local.get $4
       local.get $6
       i32.const 3
       i32.and
       i32.or
       i32.store
       br $folding-inner0
      end
     end
     local.get $3
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/moveBlock
     local.set $0
     br $__inlined_func$~lib/rt/tlsf/reallocateBlock
    end
    local.get $3
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/prepareBlock
   end
  end
  local.get $0
  i32.const 20
  i32.add
  local.tee $2
  i32.const 20
  i32.sub
  local.tee $0
  local.get $1
  i32.store offset=16
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load offset=8
  local.get $0
  call $~lib/rt/tcms/Object#set:next
  global.get $~lib/rt/tcms/total
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1392
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/rt/tcms/__renew
   local.tee $1
   i32.add
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
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
   local.get $3
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
 (func $src/HeapQueue/HeapQueue#swap (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/typedarray/Float32Array#__uget
  local.set $3
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/typedarray/Int32Array#__uget
  local.set $4
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $2
  call $~lib/typedarray/Float32Array#__uget
  call $~lib/typedarray/Float32Array#__uset
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $0
  i32.load offset=8
  local.get $2
  call $~lib/typedarray/Int32Array#__uget
  call $~lib/typedarray/Int32Array#__uset
  local.get $0
  i32.load offset=4
  local.get $2
  local.get $3
  call $~lib/typedarray/Float32Array#__uset
  local.get $0
  i32.load offset=8
  local.get $2
  local.get $4
  call $~lib/typedarray/Int32Array#__uset
 )
 (func $src/HeapQueue/HeapQueue#push (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  call $~lib/array/ensureSize
  local.get $3
  i32.load offset=4
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  f32.store
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
    local.get $2
    call $~lib/typedarray/Float32Array#__uget
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 1
    i32.sub
    i32.const 1
    i32.shr_u
    local.tee $3
    call $~lib/typedarray/Float32Array#__uget
    f32.sub
    f32.const 0
    f32.lt
    if
     local.get $0
     local.get $3
     local.get $2
     call $src/HeapQueue/HeapQueue#swap
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
 (func $~lib/rt/__newArray (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 16
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $1
  i32.const 16
  local.get $0
  call $~lib/rt/tcms/__new
  local.tee $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
 )
 (func $src/HeapQueue/HeapQueue#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  i32.load offset=8
  i32.const 0
  call $~lib/typedarray/Int32Array#__uget
  local.set $7
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
   i32.const 2
   i32.shl
   i32.add
   f32.load
   local.set $8
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
   local.tee $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $1
   local.get $4
   local.get $3
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
    i32.const 0
    local.get $8
    call $~lib/typedarray/Float32Array#__uset
    local.get $0
    i32.load offset=8
    i32.const 0
    local.get $1
    call $~lib/typedarray/Int32Array#__uset
    local.get $0
    i32.load offset=4
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $5
    loop $while-continue|0
     local.get $2
     i32.const 1
     i32.shl
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.add
     local.set $4
     local.get $1
     local.set $3
     local.get $2
     local.tee $1
     local.tee $6
     local.get $4
     local.get $3
     local.get $1
     local.get $3
     local.get $5
     i32.le_s
     if (result i32)
      local.get $0
      i32.load offset=4
      local.get $3
      call $~lib/typedarray/Float32Array#__uget
      local.get $0
      i32.load offset=4
      local.get $1
      call $~lib/typedarray/Float32Array#__uget
      f32.sub
      f32.const 0
      f32.lt
     else
      i32.const 0
     end
     select
     local.tee $2
     local.get $4
     local.get $5
     i32.le_s
     if (result i32)
      local.get $0
      i32.load offset=4
      local.get $4
      call $~lib/typedarray/Float32Array#__uget
      local.get $0
      i32.load offset=4
      local.get $2
      call $~lib/typedarray/Float32Array#__uget
      f32.sub
      f32.const 0
      f32.lt
     else
      i32.const 0
     end
     select
     local.tee $2
     i32.ne
     if
      local.get $0
      local.get $2
      local.get $6
      call $src/HeapQueue/HeapQueue#swap
      br $while-continue|0
     end
    end
   end
   local.get $7
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
 (func $src/index/eikonal (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  local.get $3
  local.get $0
  call $~lib/typedarray/Float32Array#__uget
  local.set $5
  local.get $3
  local.get $1
  call $~lib/typedarray/Float32Array#__uget
  local.set $6
  local.get $2
  local.get $0
  call $~lib/typedarray/Int32Array#__uget
  local.get $2
  local.get $1
  call $~lib/typedarray/Int32Array#__uget
  local.set $0
  if (result f32)
   f32.const 1e6
   local.get $6
   f32.const 1
   f32.add
   local.get $0
   select
  else
   local.get $0
   if (result f32)
    local.get $5
    f32.const 1
    f32.add
   else
    local.get $5
    local.get $6
    f32.add
    f64.const 2
    local.get $5
    local.get $6
    f32.sub
    local.tee $4
    local.get $4
    f32.mul
    f64.promote_f32
    f64.sub
    f64.sqrt
    f32.demote_f64
    local.tee $7
    f32.sub
    f32.const 0.5
    f32.mul
    local.tee $4
    local.get $6
    f32.ge
    i32.const 0
    local.get $4
    local.get $5
    f32.ge
    select
    if (result f32)
     local.get $4
    else
     local.get $4
     local.get $7
     f32.add
     local.tee $4
     local.get $6
     f32.ge
     i32.const 0
     local.get $4
     local.get $5
     f32.ge
     select
     if (result f32)
      local.get $4
     else
      f32.const 1e6
     end
    end
   end
  end
 )
 (func $src/index/grad_func (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result f32)
  local.get $3
  local.get $1
  local.get $2
  i32.add
  call $~lib/typedarray/Int32Array#__uget
  i32.const 2
  i32.ne
  if (result f32)
   local.get $3
   local.get $1
   local.get $2
   i32.sub
   call $~lib/typedarray/Int32Array#__uget
   i32.const 2
   i32.ne
   if (result f32)
    local.get $0
    local.get $1
    local.get $2
    i32.add
    call $~lib/typedarray/Float32Array#__uget
    local.get $0
    local.get $1
    local.get $2
    i32.sub
    call $~lib/typedarray/Float32Array#__uget
    f32.sub
    f32.const 0.5
    f32.mul
   else
    local.get $0
    local.get $1
    local.get $2
    i32.add
    call $~lib/typedarray/Float32Array#__uget
    local.get $0
    local.get $1
    call $~lib/typedarray/Float32Array#__uget
    f32.sub
   end
  else
   local.get $3
   local.get $1
   local.get $2
   i32.sub
   call $~lib/typedarray/Int32Array#__uget
   i32.const 2
   i32.ne
   if (result f32)
    local.get $0
    local.get $1
    call $~lib/typedarray/Float32Array#__uget
    local.get $0
    local.get $1
    local.get $2
    i32.sub
    call $~lib/typedarray/Float32Array#__uget
    f32.sub
   else
    f32.const 0
   end
  end
 )
 (func $src/index/inpaint_point (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 i32)
  (local $17 i32)
  (local $18 f32)
  local.get $2
  local.get $0
  i32.const 1
  local.get $1
  call $src/index/grad_func
  local.set $14
  local.get $2
  local.get $0
  local.get $4
  local.get $1
  call $src/index/grad_func
  local.set $15
  local.get $0
  local.get $4
  i32.rem_s
  local.set $16
  local.get $0
  local.get $4
  i32.div_s
  f64.convert_i32_s
  f64.floor
  i32.trunc_f64_s
  local.set $17
  loop $for-loop|0
   local.get $10
   local.get $6
   i32.load offset=12
   i32.lt_s
   if
    block $for-continue|0
     i32.const 1
     local.get $6
     local.get $10
     call $~lib/typedarray/Int32Array#__uget
     local.get $0
     i32.add
     local.tee $8
     local.get $4
     i32.div_s
     f64.convert_i32_s
     f64.floor
     local.tee $11
     local.get $5
     i32.const 1
     i32.sub
     f64.convert_i32_s
     f64.ge
     i32.const 1
     local.get $8
     local.get $4
     i32.rem_s
     local.tee $12
     local.get $4
     i32.const 1
     i32.sub
     i32.ge_s
     i32.const 1
     local.get $11
     f64.const 1
     f64.le
     local.get $12
     i32.const 1
     i32.le_s
     select
     select
     select
     br_if $for-continue|0
     local.get $1
     local.get $8
     call $~lib/typedarray/Int32Array#__uget
     br_if $for-continue|0
     local.get $7
     f64.const 1
     local.get $16
     local.get $12
     i32.sub
     f32.convert_i32_s
     local.tee $7
     local.get $7
     f32.mul
     local.get $17
     f64.convert_i32_s
     local.get $11
     f64.sub
     f32.demote_f64
     local.tee $9
     local.get $9
     f32.mul
     f32.add
     local.tee $18
     f64.promote_f32
     local.get $18
     f64.promote_f32
     f64.sqrt
     f64.mul
     f64.div
     f32.demote_f64
     f64.const 1
     local.get $2
     local.get $8
     call $~lib/typedarray/Float32Array#__uget
     local.get $2
     local.get $0
     call $~lib/typedarray/Float32Array#__uget
     f32.sub
     f64.promote_f32
     f64.abs
     f64.const 1
     f64.add
     f64.div
     f32.demote_f64
     f32.mul
     local.get $7
     local.get $14
     f32.mul
     local.get $9
     local.get $15
     f32.mul
     f32.add
     f64.promote_f32
     f64.abs
     f32.demote_f64
     f32.mul
     f32.const 9.999999974752427e-07
     f32.add
     local.tee $9
     local.get $3
     local.get $8
     call $~lib/typedarray/Int32Array#__uget
     f32.convert_i32_s
     f32.mul
     f32.add
     local.set $7
     local.get $13
     local.get $9
     f32.add
     local.set $13
    end
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|0
   end
  end
  local.get $3
  local.get $0
  local.get $7
  local.get $13
  f32.div
  i32.trunc_f32_s
  call $~lib/typedarray/Int32Array#__set
 )
 (func $src/index/inpaintChannel (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 i32)
  (local $16 i32)
  local.get $0
  local.get $1
  i32.mul
  local.set $9
  loop $for-loop|0
   local.get $8
   local.get $9
   i32.lt_s
   if
    local.get $3
    local.get $8
    call $~lib/typedarray/Int32Array#__uget
    if
     local.get $4
     local.get $8
     i32.const 1
     i32.add
     i32.const 1
     call $~lib/typedarray/Int32Array#__uset
     local.get $4
     local.get $8
     i32.const 1
     call $~lib/typedarray/Int32Array#__uset
     local.get $4
     local.get $8
     i32.const 1
     i32.sub
     i32.const 1
     call $~lib/typedarray/Int32Array#__uset
     local.get $4
     local.get $0
     local.get $8
     i32.add
     i32.const 1
     call $~lib/typedarray/Int32Array#__uset
     local.get $4
     local.get $8
     local.get $0
     i32.sub
     i32.const 1
     call $~lib/typedarray/Int32Array#__uset
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $8
  loop $for-loop|1
   local.get $8
   local.get $9
   i32.lt_s
   if
    local.get $4
    local.get $8
    local.get $4
    local.get $8
    call $~lib/typedarray/Int32Array#__uget
    i32.const 1
    i32.shl
    local.get $3
    local.get $8
    call $~lib/typedarray/Int32Array#__uget
    local.get $4
    local.get $8
    call $~lib/typedarray/Int32Array#__uget
    i32.xor
    i32.sub
    call $~lib/typedarray/Int32Array#__uset
    local.get $4
    local.get $8
    call $~lib/typedarray/Int32Array#__uget
    i32.const 2
    i32.eq
    if
     local.get $5
     local.get $8
     f32.const 1e6
     call $~lib/typedarray/Float32Array#__uset
    else
     local.get $4
     local.get $8
     call $~lib/typedarray/Int32Array#__uget
     i32.const 1
     i32.eq
     if
      local.get $6
      local.get $5
      local.get $8
      call $~lib/typedarray/Float32Array#__uget
      local.get $8
      call $src/HeapQueue/HeapQueue#push
     end
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  call $~lib/array/Array<i32>#constructor
  local.set $13
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
    local.tee $9
    i32.sub
    local.set $8
    loop $for-loop|3
     local.get $8
     local.get $9
     i32.le_s
     if
      local.get $13
      local.get $3
      local.get $0
      local.get $8
      i32.mul
      i32.add
      call $~lib/array/Array<i32>#push
      local.get $8
      i32.const 1
      i32.add
      local.set $8
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
  i32.const 7
  call $~lib/rt/__newArray
  local.tee $9
  i32.load offset=4
  drop
  local.get $9
  i32.const 0
  i32.const 0
  local.get $0
  i32.sub
  call $~lib/typedarray/Int32Array#__uset
  local.get $9
  i32.const 1
  i32.const -1
  call $~lib/typedarray/Int32Array#__uset
  local.get $9
  i32.const 2
  local.get $0
  call $~lib/typedarray/Int32Array#__uset
  local.get $9
  i32.const 3
  i32.const 1
  call $~lib/typedarray/Int32Array#__uset
  loop $while-continue|4
   local.get $6
   i32.load
   if
    local.get $6
    call $src/HeapQueue/HeapQueue#pop
    local.tee $12
    local.get $0
    i32.rem_s
    local.set $3
    local.get $12
    local.get $0
    i32.div_s
    f64.convert_i32_s
    f64.floor
    local.set $14
    local.get $4
    local.get $12
    i32.const 0
    call $~lib/typedarray/Int32Array#__set
    i32.const 1
    local.get $14
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
    local.get $14
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
    local.set $11
    loop $for-loop|5
     local.get $11
     i32.const 4
     i32.lt_s
     if
      local.get $4
      local.get $9
      local.get $11
      call $~lib/typedarray/Int32Array#__uget
      local.get $12
      i32.add
      local.tee $3
      call $~lib/typedarray/Int32Array#__uget
      if
       i32.const 6
       call $~lib/rt/__newArray
       local.tee $10
       i32.load offset=4
       drop
       local.get $10
       i32.const 0
       local.get $3
       local.get $0
       i32.sub
       local.tee $15
       local.get $3
       i32.const 1
       i32.sub
       local.tee $8
       local.get $4
       local.get $5
       call $src/index/eikonal
       call $~lib/typedarray/Float32Array#__uset
       local.get $10
       i32.const 1
       local.get $0
       local.get $3
       i32.add
       local.tee $16
       local.get $8
       local.get $4
       local.get $5
       call $src/index/eikonal
       call $~lib/typedarray/Float32Array#__uset
       local.get $10
       i32.const 2
       local.get $15
       local.get $3
       i32.const 1
       i32.add
       local.tee $8
       local.get $4
       local.get $5
       call $src/index/eikonal
       call $~lib/typedarray/Float32Array#__uset
       local.get $10
       i32.const 3
       local.get $16
       local.get $8
       local.get $4
       local.get $5
       call $src/index/eikonal
       call $~lib/typedarray/Float32Array#__uset
       i32.const 0
       local.set $8
       f32.const inf
       local.set $7
       loop $for-loop|00
        local.get $8
        local.get $10
        i32.load offset=12
        i32.lt_s
        if
         local.get $10
         local.get $8
         call $~lib/typedarray/Float32Array#__uget
         local.get $7
         f32.lt
         if
          local.get $10
          local.get $8
          call $~lib/typedarray/Float32Array#__uget
          local.set $7
         end
         local.get $8
         i32.const 1
         i32.add
         local.set $8
         br $for-loop|00
        end
       end
       local.get $5
       local.get $3
       local.get $7
       call $~lib/typedarray/Float32Array#__uset
       local.get $4
       local.get $3
       call $~lib/typedarray/Int32Array#__uget
       i32.const 2
       i32.eq
       if
        local.get $4
        local.get $3
        i32.const 1
        call $~lib/typedarray/Int32Array#__uset
        local.get $6
        local.get $5
        local.get $3
        call $~lib/typedarray/Float32Array#__uget
        local.get $3
        call $src/HeapQueue/HeapQueue#push
        local.get $3
        local.get $4
        local.get $5
        local.get $2
        local.get $0
        local.get $1
        local.get $13
        call $src/index/inpaint_point
       end
      end
      local.get $11
      i32.const 1
      i32.add
      local.set $11
      br $for-loop|5
     end
    end
    br $while-continue|4
   end
  end
 )
 (func $src/index/inpaint (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
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
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $8
  i32.const 12
  i32.const 4
  call $~lib/rt/tcms/__new
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $9
  i32.const 12
  i32.const 5
  call $~lib/rt/tcms/__new
  local.tee $6
  i32.const 0
  i32.store
  local.get $6
  i32.const 0
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=8
  local.get $6
  i32.const 0
  i32.store
  i32.const 16
  i32.const 6
  call $~lib/rt/tcms/__new
  local.tee $7
  i32.const 0
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $10
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $7
  local.get $10
  i32.store
  local.get $7
  local.get $10
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.store offset=12
  local.get $6
  local.get $7
  i32.store offset=4
  local.get $6
  call $~lib/array/Array<i32>#constructor
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  local.get $5
  local.get $8
  local.get $9
  local.get $6
  call $src/index/inpaintChannel
  local.get $0
  local.get $1
  local.get $3
  local.get $5
  local.get $8
  local.get $9
  local.get $6
  call $src/index/inpaintChannel
  local.get $0
  local.get $1
  local.get $4
  local.get $5
  local.get $8
  local.get $9
  local.get $6
  call $src/index/inpaintChannel
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 1860
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1232
    i32.const 101
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1232
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/rt/tcms/Object#set:next
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
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
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   local.get $1
   global.get $~lib/rt/tcms/pinSpace
   i32.const 3
   call $~lib/rt/tcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
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
  local.get $0
  call $~lib/rt/tcms/Object#unlink
  local.get $0
  global.get $~lib/rt/tcms/fromSpace
  global.get $~lib/rt/tcms/white
  call $~lib/rt/tcms/Object#linkTo
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1488
  call $~lib/rt/tcms/__visit
  i32.const 1056
  call $~lib/rt/tcms/__visit
  i32.const 1440
  call $~lib/rt/tcms/__visit
  i32.const 1168
  call $~lib/rt/tcms/__visit
  i32.const 1616
  call $~lib/rt/tcms/__visit
  i32.const 1712
  call $~lib/rt/tcms/__visit
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
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1232
     i32.const 213
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
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
  local.set $3
  global.get $~lib/rt/tcms/toSpace
  local.tee $4
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
   local.get $0
   local.get $4
   i32.ne
   if
    local.get $3
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1232
     i32.const 223
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
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
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1232
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
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
     local.tee $0
     i32.const 1860
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      call $~lib/rt/tlsf/checkUsedBlock
      call $~lib/rt/tlsf/freeBlock
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
  local.get $4
  global.set $~lib/rt/tcms/fromSpace
  local.get $2
  global.set $~lib/rt/tcms/toSpace
  local.get $3
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/tcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
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
   local.get $0
   call $~lib/rt/tcms/Object#unlink
   local.get $0
   global.get $~lib/rt/tcms/toSpace
   global.get $~lib/rt/tcms/white
   i32.eqz
   call $~lib/rt/tcms/Object#linkTo
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
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
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $folding-inner2 $folding-inner2 $src/HeapQueue/HeapQueue $folding-inner1 $folding-inner1 $invalid
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
      call $~lib/rt/tcms/__visit
     end
     local.get $0
     i32.load offset=8
     local.tee $0
     if
      local.get $0
      call $~lib/rt/tcms/__visit
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load
   call $~lib/rt/tcms/__visit
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~start
  i32.const 1344
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1664
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/pinSpace
  i32.const 1760
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/toSpace
 )
)
