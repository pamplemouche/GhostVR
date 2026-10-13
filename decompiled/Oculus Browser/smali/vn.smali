.class public final Lvn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lun;


# direct methods
.method public constructor <init>(Lun;)V
    .locals 0

    iput-object p1, p0, Lvn;->w:Lun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvn;->w:Lun;

    .line 1
    iget-object v1, v0, Lun;->d:Lem;

    .line 2
    iget-object v0, v0, Lun;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lkm;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
