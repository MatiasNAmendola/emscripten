
@.str = private unnamed_addr constant [15 x i8] c"hello, world!\0A\00", align 1 ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
define i32 @main() {
entry:
  %retval = alloca i32, align 4                   ; [#uses=1 type=i32*]
  %f = alloca float, align 4
  store float 1.000000e+10, float* %f, align 4
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) ; [#uses=0 type=i32]
  ret i32 1
}

; [#uses=1]
declare i32 @printf(i8*, ...)

