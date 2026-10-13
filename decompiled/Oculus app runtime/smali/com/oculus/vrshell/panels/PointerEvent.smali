.class final Lcom/oculus/vrshell/panels/PointerEvent;
.super Ljava/lang/Object;
.source "PointerEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;
    }
.end annotation


# static fields
.field private static final POOL:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/oculus/vrshell/panels/PointerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x19


# instance fields
.field private mMotionEvent:Landroid/view/MotionEvent;

.field private final mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private final mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oculus/vrshell/panels/PointerEvent;->POOL:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 27
    new-array v0, v0, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-void
.end method

.method public static obtain(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;JIFF)Lcom/oculus/vrshell/panels/PointerEvent;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 112
    invoke-static/range {v0 .. v7}, Lcom/oculus/vrshell/panels/PointerEvent;->obtain(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;JIFFLjava/lang/Float;Ljava/lang/Float;)Lcom/oculus/vrshell/panels/PointerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;JIFFLjava/lang/Float;Ljava/lang/Float;)Lcom/oculus/vrshell/panels/PointerEvent;
    .locals 20
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/PointerEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/oculus/vrshell/panels/PointerEvent;

    invoke-direct {v0}, Lcom/oculus/vrshell/panels/PointerEvent;-><init>()V

    goto :goto_0

    .line 59
    :cond_0
    iput-boolean v1, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mRecycled:Z

    .line 63
    :goto_0
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v1

    .line 64
    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->getToolType()I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 68
    iget-object v2, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v2, v1

    move/from16 v2, p4

    .line 69
    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v2, p5

    .line 70
    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    if-eqz p6, :cond_1

    const/16 v2, 0xa

    .line 73
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    :cond_1
    if-eqz p7, :cond_2

    const/16 v2, 0x9

    .line 77
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 84
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v11, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->getButtonState()I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->getSource()I

    move-result v18

    const/16 v19, 0x0

    move-wide/from16 v4, p1

    move/from16 v8, p3

    .line 82
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/vrshell/panels/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method


# virtual methods
.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 124
    iget-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 125
    iget-object v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/PointerEvent;->mRecycled:Z

    .line 128
    sget-object v0, Lcom/oculus/vrshell/panels/PointerEvent;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method
