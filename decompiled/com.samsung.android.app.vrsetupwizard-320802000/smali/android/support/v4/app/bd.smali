.class Landroid/support/v4/app/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/support/v4/app/ba;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ba;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bd;->g:Landroid/support/v4/app/ba;

    iput-object p2, p0, Landroid/support/v4/app/bd;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/bd;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/bd;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/v4/app/bd;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/bd;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/bd;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    iget-object p1, p0, Landroid/support/v4/app/bd;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/bd;->g:Landroid/support/v4/app/ba;

    iget-object v2, p0, Landroid/support/v4/app/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/app/ba;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/bd;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/bd;->g:Landroid/support/v4/app/ba;

    iget-object v2, p0, Landroid/support/v4/app/bd;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/app/ba;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/bd;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/bd;->g:Landroid/support/v4/app/ba;

    iget-object v2, p0, Landroid/support/v4/app/bd;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/app/ba;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
