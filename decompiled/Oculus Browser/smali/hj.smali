.class public abstract Lhj;
.super LDm;
.source "PG"


# static fields
.field public static final i:Lxm;

.field public static final j:Lom;

.field public static final k:Lym;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, Lhj;->i:Lxm;

    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    sput-object v0, Lhj;->j:Lom;

    new-instance v1, Lym;

    sget-object v2, Lhj;->i:Lxm;

    const-string v3, "SmsRetriever.API"

    invoke-direct {v1, v3, v0, v2}, Lym;-><init>(Ljava/lang/String;Lom;Lxm;)V

    sput-object v1, Lhj;->k:Lym;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lhj;->k:Lym;

    new-instance v1, LPm;

    invoke-direct {v1}, LPm;-><init>()V

    const-string v2, "StatusExceptionMapper must not be null."

    .line 1
    invoke-static {v1, v2}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, LCm;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, LCm;-><init>(Ljn;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 3
    invoke-direct {p0, p1, v0, v4, v3}, LDm;-><init>(Landroid/content/Context;Lym;Lum;LCm;)V

    return-void
.end method
