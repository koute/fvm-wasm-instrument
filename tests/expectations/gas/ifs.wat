(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i64)))
  (import "env" "gas_couner" (global (;0;) (mut i64)))
  (func (;0;) (type 0) (param $x i32) (result i32)
    i64.const 2
    call 1
    i32.const 1
    if (result i32) ;; label = @1
      i64.const 3
      call 1
      local.get $x
      i32.const 1
      i32.add
    else
      i64.const 2
      call 1
      local.get $x
      i32.popcnt
    end
  )
  (func (;1;) (type 1) (param i64)
    global.get 0
    local.get 0
    i64.sub
    global.set 0
    global.get 0
    i64.const 0
    i64.lt_s
    if ;; label = @1
      unreachable
    end
  )
)