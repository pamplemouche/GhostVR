.class public final Lco;
.super LKu;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;


# static fields
.field public static h:Lom;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Lom;

.field public d:Ljava/util/Set;

.field public e:LVo;

.field public f:LHu;

.field public g:Lgo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, LGu;->c:Lom;

    sput-object v0, Lco;->h:Lom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;LVo;Lom;)V
    .locals 0

    invoke-direct {p0}, LKu;-><init>()V

    iput-object p1, p0, Lco;->a:Landroid/content/Context;

    iput-object p2, p0, Lco;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lco;->e:LVo;

    .line 1
    iget-object p1, p3, LVo;->b:Ljava/util/Set;

    .line 2
    iput-object p1, p0, Lco;->d:Ljava/util/Set;

    iput-object p4, p0, Lco;->c:Lom;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lco;->f:LHu;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lco;->f:LHu;

    check-cast p1, LQu;

    invoke-virtual {p1, p0}, LQu;->a(LMu;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lco;->g:Lgo;

    check-cast v0, LXm;

    invoke-virtual {v0, p1}, LXm;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 2

    iget-object v0, p0, Lco;->b:Landroid/os/Handler;

    new-instance v1, Lfo;

    invoke-direct {v1, p0, p1}, Lfo;-><init>(Lco;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
