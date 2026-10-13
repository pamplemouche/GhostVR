.class public final synthetic LeA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:I

.field public final w:LjA0;

.field public final x:I

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public constructor <init>(LjA0;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LeA0;->w:LjA0;

    iput p2, p0, LeA0;->x:I

    iput-object p3, p0, LeA0;->y:Ljava/lang/String;

    iput p4, p0, LeA0;->z:I

    iput p5, p0, LeA0;->A:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LeA0;->w:LjA0;

    iget v1, p0, LeA0;->x:I

    iget-object v2, p0, LeA0;->y:Ljava/lang/String;

    iget v3, p0, LeA0;->z:I

    .line 1
    new-instance v4, LaA0;

    invoke-direct {v4}, LaA0;-><init>()V

    iput-object v4, v0, LjA0;->e:LaA0;

    .line 2
    iput v3, v4, LaA0;->a:I

    .line 3
    iget-object v3, v0, LjA0;->g:LiA0;

    .line 4
    check-cast v3, LDA0;

    invoke-virtual {v3}, LDA0;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, LaA0;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, v0, LjA0;->e:LaA0;

    iget-object v3, v0, LjA0;->g:LiA0;

    .line 6
    check-cast v3, LDA0;

    invoke-virtual {v3}, LDA0;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130545

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LaA0;->c:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v1, v0, LjA0;->f:Lorg/chromium/chrome/browser/preferences/password/ExportWarningDialogFragment;

    if-nez v1, :cond_1

    invoke-virtual {v0}, LjA0;->b()V

    :cond_1
    return-void
.end method
