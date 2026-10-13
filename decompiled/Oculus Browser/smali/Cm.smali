.class public LCm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:LCm;


# instance fields
.field public final a:Ljn;

.field public final b:Landroid/os/Looper;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LPm;

    invoke-direct {v0}, LPm;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LCm;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, LCm;-><init>(Ljn;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 2
    sput-object v2, LCm;->c:LCm;

    return-void
.end method

.method public synthetic constructor <init>(Ljn;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCm;->a:Ljn;

    iput-object p3, p0, LCm;->b:Landroid/os/Looper;

    return-void
.end method
