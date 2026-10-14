.class Landroid/support/v4/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/a/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)F
    .locals 2

    invoke-static {p1}, Landroid/support/v4/a/a/s;->a(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.content.res.CompatibilityInfo"

    const-string v1, "applicationScale"

    invoke-static {v0, v1}, Landroid/support/v4/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
