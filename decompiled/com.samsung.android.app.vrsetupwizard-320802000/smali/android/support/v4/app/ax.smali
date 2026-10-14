.class final Landroid/support/v4/app/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Z

.field final synthetic d:Landroid/support/v4/k/a;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/support/v4/app/bf;

.field final synthetic g:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Landroid/view/View;Landroid/support/v4/app/bf;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ax;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/ax;->b:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p0, Landroid/support/v4/app/ax;->c:Z

    iput-object p4, p0, Landroid/support/v4/app/ax;->d:Landroid/support/v4/k/a;

    iput-object p5, p0, Landroid/support/v4/app/ax;->e:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/ax;->f:Landroid/support/v4/app/bf;

    iput-object p7, p0, Landroid/support/v4/app/ax;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/ax;->a:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/ax;->b:Landroid/support/v4/app/Fragment;

    iget-boolean v2, p0, Landroid/support/v4/app/ax;->c:Z

    iget-object v3, p0, Landroid/support/v4/app/ax;->d:Landroid/support/v4/k/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/au;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/k/a;Z)V

    iget-object v0, p0, Landroid/support/v4/app/ax;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/ax;->f:Landroid/support/v4/app/bf;

    iget-object v2, p0, Landroid/support/v4/app/ax;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/bf;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
