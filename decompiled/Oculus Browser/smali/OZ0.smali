.class public LOZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/ActionMode;

.field public final synthetic x:LPZ0;


# direct methods
.method public constructor <init>(LPZ0;Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOZ0;->x:LPZ0;

    iput-object p2, p0, LOZ0;->w:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LOZ0;->x:LPZ0;

    iget-object v0, v0, LPZ0;->a:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, LOZ0;->w:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method
