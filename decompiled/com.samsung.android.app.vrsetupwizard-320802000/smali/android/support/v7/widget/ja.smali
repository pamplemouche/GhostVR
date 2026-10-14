.class Landroid/support/v7/widget/ja;
.super Ljava/lang/Object;


# static fields
.field private static final e:Landroid/support/v4/k/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/u<",
            "Landroid/support/v7/widget/ja;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/k/u;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/support/v4/k/u;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/ja;->e:Landroid/support/v4/k/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIZZ)Landroid/support/v7/widget/ja;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/ja;->e:Landroid/support/v4/k/u;

    invoke-virtual {v0}, Landroid/support/v4/k/u;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ja;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ja;

    invoke-direct {v0}, Landroid/support/v7/widget/ja;-><init>()V

    :cond_0
    iput p0, v0, Landroid/support/v7/widget/ja;->a:I

    iput p1, v0, Landroid/support/v7/widget/ja;->b:I

    iput-boolean p2, v0, Landroid/support/v7/widget/ja;->c:Z

    iput-boolean p3, v0, Landroid/support/v7/widget/ja;->d:Z

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/ja;->e:Landroid/support/v4/k/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/k/u;->a(Ljava/lang/Object;)Z

    return-void
.end method
