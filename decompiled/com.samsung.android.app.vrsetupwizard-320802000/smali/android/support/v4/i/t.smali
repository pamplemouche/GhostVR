.class Landroid/support/v4/i/t;
.super Landroid/support/v4/i/s;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/i/s;-><init>(Landroid/support/v4/i/q;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/i/q;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/i/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/support/v4/i/r;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_PEN_HOVERING"

    invoke-static {v0, v1}, Landroid/support/v4/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "pen_hovering"

    return-object v0
.end method
