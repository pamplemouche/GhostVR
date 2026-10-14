.class Landroid/support/v4/widget/k;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/i;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/i;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/i;->a:Z

    invoke-virtual {v0}, Landroid/support/v4/widget/i;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/i;->a:Z

    invoke-virtual {v0}, Landroid/support/v4/widget/i;->notifyDataSetInvalidated()V

    return-void
.end method
