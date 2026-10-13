.class public final synthetic LxV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LLV;

.field public final x:I


# direct methods
.method public constructor <init>(LLV;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LxV;->w:LLV;

    iput p2, p0, LxV;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LxV;->w:LLV;

    iget v1, p0, LxV;->x:I

    .line 1
    iget-object v0, v0, LLV;->i:LbW;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, LbW;->g(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
