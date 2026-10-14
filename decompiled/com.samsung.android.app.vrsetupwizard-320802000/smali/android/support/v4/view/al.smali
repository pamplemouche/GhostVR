.class Landroid/support/v4/view/al;
.super Landroid/support/v4/view/ak;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ak;-><init>(Landroid/support/v4/view/ai;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ai;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/InputDevice;I)V
    .locals 5

    invoke-static {}, Landroid/support/v4/view/ah;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "semSetPointerType"

    invoke-static {v0, v3, v2}, Landroid/support/v4/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v0, v1}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
