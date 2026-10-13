.class public final Lyn;
.super LNn;
.source "PG"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic c:Lxn;


# direct methods
.method public constructor <init>(Lxn;LLn;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lyn;->c:Lxn;

    iput-object p3, p0, Lyn;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, LNn;-><init>(LLn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyn;->c:Lxn;

    iget-object v0, v0, Lxn;->y:Lun;

    iget-object v1, p0, Lyn;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 1
    invoke-virtual {v0, v1}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
