.class Landroid/support/v7/view/menu/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/support/v7/widget/dq;

.field public final b:Landroid/support/v7/view/menu/p;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/dq;Landroid/support/v7/view/menu/p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/l;->a:Landroid/support/v7/widget/dq;

    iput-object p2, p0, Landroid/support/v7/view/menu/l;->b:Landroid/support/v7/view/menu/p;

    iput p3, p0, Landroid/support/v7/view/menu/l;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/l;->a:Landroid/support/v7/widget/dq;

    invoke-virtual {v0}, Landroid/support/v7/widget/dq;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
