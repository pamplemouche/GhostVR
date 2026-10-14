.class public Landroid/support/v4/i/r;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/i/u;

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

    const-class v0, Landroid/provider/Settings$System;

    sput-object v0, Landroid/support/v4/i/r;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/i/t;

    invoke-direct {v0, v1}, Landroid/support/v4/i/t;-><init>(Landroid/support/v4/i/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/i/s;

    invoke-direct {v0, v1}, Landroid/support/v4/i/s;-><init>(Landroid/support/v4/i/q;)V

    :goto_0
    sput-object v0, Landroid/support/v4/i/r;->a:Landroid/support/v4/i/u;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/i/r;->a:Landroid/support/v4/i/u;

    invoke-interface {v0}, Landroid/support/v4/i/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/i/r;->b:Ljava/lang/Class;

    return-object v0
.end method
