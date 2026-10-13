.class public Lp01;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LU01;

.field public b:Lorg/chromium/ui/base/WindowAndroid;

.field public c:Lo01;

.field public d:Landroid/os/Handler;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LU01;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp01;->a:LU01;

    .line 3
    iput-object p2, p0, Lp01;->b:Lorg/chromium/ui/base/WindowAndroid;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lp01;->d:Landroid/os/Handler;

    .line 5
    new-instance p1, Ln01;

    invoke-direct {p1, p0}, Ln01;-><init>(Lp01;)V

    iput-object p1, p0, Lp01;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp01;->b:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    const-string v2, "textclassification"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_3

    .line 4
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lp01;->c:Lo01;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, LkW;->cancel(Z)Z

    .line 7
    iput-object v1, p0, Lp01;->c:Lo01;

    .line 8
    :cond_2
    new-instance v0, Lo01;

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lo01;-><init>(Lp01;Landroid/view/textclassifier/TextClassifier;ILjava/lang/CharSequence;II)V

    iput-object v0, p0, Lp01;->c:Lo01;

    .line 9
    sget-object p1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lp01;->d:Landroid/os/Handler;

    iget-object p2, p0, Lp01;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
