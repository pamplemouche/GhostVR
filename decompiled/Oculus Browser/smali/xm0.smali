.class public abstract Lxm0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lym0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lym0;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lym0;-><init>(ZLandroid/content/SharedPreferences;Lwm0;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lym0;

    const/4 v1, 0x1

    .line 4
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    new-instance v3, Lwm0;

    new-instance v4, Lbm0;

    .line 6
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-direct {v4, v5}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lwm0;-><init>(Lam0;Landroid/content/res/Resources;)V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lym0;-><init>(ZLandroid/content/SharedPreferences;Lwm0;I)V

    :goto_0
    sput-object v0, Lxm0;->a:Lym0;

    return-void
.end method
