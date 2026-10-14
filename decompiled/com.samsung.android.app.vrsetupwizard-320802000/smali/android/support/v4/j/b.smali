.class public Landroid/support/v4/j/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/j/f;

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
    .locals 3

    const-class v0, Landroid/text/TextUtils;

    sput-object v0, Landroid/support/v4/j/b;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/j/e;

    invoke-direct {v0, v1}, Landroid/support/v4/j/e;-><init>(Landroid/support/v4/j/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/j/d;

    invoke-direct {v0, v1}, Landroid/support/v4/j/d;-><init>(Landroid/support/v4/j/c;)V

    :goto_0
    sput-object v0, Landroid/support/v4/j/b;->a:Landroid/support/v4/j/f;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/j/b;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1

    sget-object v0, Landroid/support/v4/j/b;->a:Landroid/support/v4/j/f;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/j/f;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    return-object p0
.end method
