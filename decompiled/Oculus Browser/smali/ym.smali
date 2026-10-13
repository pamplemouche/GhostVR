.class public final Lym;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lom;

.field public final b:Lxm;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lom;Lxm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lym;->c:Ljava/lang/String;

    iput-object p2, p0, Lym;->a:Lom;

    iput-object p3, p0, Lym;->b:Lxm;

    return-void
.end method


# virtual methods
.method public final a()Lqm;
    .locals 2

    iget-object v0, p0, Lym;->b:Lxm;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
