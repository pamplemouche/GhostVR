.class public Lwl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lyl0;


# direct methods
.method public constructor <init>(Lyl0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwl0;->x:Lyl0;

    iput p2, p0, Lwl0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwl0;->x:Lyl0;

    .line 2
    iget-object v0, v0, Lyl0;->a:Landroid/app/Activity;

    .line 3
    iget v1, p0, Lwl0;->w:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
