.class public LGG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic w:LP8;

.field public final synthetic x:LKG0;


# direct methods
.method public constructor <init>(LKG0;LP8;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGG0;->x:LKG0;

    iput-object p2, p0, LGG0;->w:LP8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, LGG0;->w:LP8;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, LP8;->a(I)Landroid/widget/Button;

    move-result-object p1

    .line 2
    new-instance v0, LFG0;

    invoke-direct {v0, p0}, LFG0;-><init>(LGG0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
