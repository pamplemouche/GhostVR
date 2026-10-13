.class public Lpg;
.super Lmg;
.source "PG"

# interfaces
.implements Lng;


# static fields
.field public static c0:Ljava/lang/reflect/Method;


# instance fields
.field public b0:Lng;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lpg;->c0:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Lpf;
    .locals 1

    .line 1
    new-instance v0, Log;

    invoke-direct {v0, p1, p2}, Log;-><init>(Landroid/content/Context;Z)V

    .line 2
    iput-object p0, v0, Log;->M:Lng;

    return-object v0
.end method

.method public a(Lqd;Landroid/view/MenuItem;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lpg;->b0:Lng;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lng;->a(Lqd;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public b(Lqd;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpg;->b0:Lng;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lng;->b(Lqd;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method
