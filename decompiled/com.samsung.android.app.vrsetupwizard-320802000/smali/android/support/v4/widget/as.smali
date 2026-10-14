.class public Landroid/support/v4/widget/as;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/av;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/widget/AdapterView;

    sput-object v0, Landroid/support/v4/widget/as;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/widget/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/au;-><init>(Landroid/support/v4/widget/at;)V

    sput-object v0, Landroid/support/v4/widget/as;->a:Landroid/support/v4/widget/av;

    return-void
.end method

.method public static a(Landroid/widget/AdapterView;)I
    .locals 1

    sget-object v0, Landroid/support/v4/widget/as;->a:Landroid/support/v4/widget/av;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/av;->a(Landroid/widget/AdapterView;)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/as;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/widget/AdapterView;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/as;->a:Landroid/support/v4/widget/av;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/av;->a(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public static b(Landroid/widget/AdapterView;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/as;->a:Landroid/support/v4/widget/av;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/av;->b(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public static c(Landroid/widget/AdapterView;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/as;->a:Landroid/support/v4/widget/av;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/av;->c(Landroid/widget/AdapterView;I)V

    return-void
.end method
