.class public Landroid/support/v4/b/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/b/h;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/b/g;

    invoke-direct {v0}, Landroid/support/v4/b/g;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/b/f;

    invoke-direct {v0}, Landroid/support/v4/b/f;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/b/e;->a:Landroid/support/v4/b/h;

    sget-object v0, Landroid/support/v4/b/e;->a:Landroid/support/v4/b/h;

    invoke-interface {v0}, Landroid/support/v4/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/b/e;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/b/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/b/e;->a:Landroid/support/v4/b/h;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
