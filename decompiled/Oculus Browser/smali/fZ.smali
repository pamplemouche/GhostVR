.class public final synthetic LfZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LgZ;


# direct methods
.method public constructor <init>(LgZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfZ;->w:LgZ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LfZ;->w:LgZ;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, LgZ;->a(Landroid/content/Intent;)V

    return-void
.end method
