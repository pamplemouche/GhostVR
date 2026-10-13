.class public final synthetic LSV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LWV;


# direct methods
.method public constructor <init>(LWV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSV;->w:LWV;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LSV;->w:LWV;

    .line 1
    iget-object v1, v0, LWV;->a:LXV;

    .line 2
    iget-object v0, v0, LWV;->c:Landroid/content/Context;

    .line 3
    invoke-interface {v1, v0}, LXV;->b(Landroid/content/Context;)V

    return-void
.end method
