.class public final Ljr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/content/Intent;

.field public final synthetic x:Landroid/content/Intent;

.field public final synthetic y:Lir;


# direct methods
.method public constructor <init>(Lir;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Ljr;->y:Lir;

    iput-object p2, p0, Ljr;->w:Landroid/content/Intent;

    iput-object p3, p0, Ljr;->x:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljr;->y:Lir;

    iget-object v1, p0, Ljr;->w:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lir;->handleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Ljr;->y:Lir;

    iget-object v1, p0, Ljr;->x:Landroid/content/Intent;

    .line 1
    invoke-virtual {v0, v1}, Lir;->a(Landroid/content/Intent;)V

    return-void
.end method
