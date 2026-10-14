.class Landroid/support/v4/j/n;
.super Landroid/support/v4/j/l;


# static fields
.field public static final a:Landroid/support/v4/j/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/j/n;

    invoke-direct {v0}, Landroid/support/v4/j/n;-><init>()V

    sput-object v0, Landroid/support/v4/j/n;->a:Landroid/support/v4/j/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/j/l;-><init>(Landroid/support/v4/j/k;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j/o;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
