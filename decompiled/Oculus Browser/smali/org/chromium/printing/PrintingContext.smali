.class public Lorg/chromium/printing/PrintingContext;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LU91;

.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LV91;->o:LU91;

    .line 3
    iput-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    .line 4
    iput-wide p1, p0, Lorg/chromium/printing/PrintingContext;->b:J

    return-void
.end method

.method public static create(J)Lorg/chromium/printing/PrintingContext;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, Lorg/chromium/printing/PrintingContext;

    invoke-direct {v0, p0, p1}, Lorg/chromium/printing/PrintingContext;-><init>(J)V

    return-object v0
.end method

.method public static pdfWritingDone(I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LV91;->o:LU91;

    if-eqz v0, :cond_4

    .line 3
    check-cast v0, LV91;

    .line 4
    iget v1, v0, LV91;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput v1, v0, LV91;->l:I

    .line 6
    invoke-virtual {v0}, LV91;->a()V

    if-lez p0, :cond_3

    .line 7
    iget-object v3, v0, LV91;->g:[I

    if-eqz v3, :cond_1

    .line 8
    array-length p0, v3

    new-array v2, p0, [Landroid/print/PageRange;

    :goto_0
    if-ge v1, p0, :cond_2

    .line 9
    aget v4, v3, v1

    .line 10
    new-instance v5, Landroid/print/PageRange;

    invoke-direct {v5, v4, v4}, Landroid/print/PageRange;-><init>(II)V

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v2, [Landroid/print/PageRange;

    .line 11
    new-instance v4, Landroid/print/PageRange;

    sub-int/2addr p0, v2

    invoke-direct {v4, v1, p0}, Landroid/print/PageRange;-><init>(II)V

    aput-object v4, v3, v1

    move-object v2, v3

    .line 12
    :cond_2
    iget-object p0, v0, LV91;->h:LP91;

    check-cast p0, LQ91;

    .line 13
    iget-object p0, p0, LQ91;->a:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0, v2}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p0, v0, LV91;->h:LP91;

    iget-object v1, v0, LV91;->a:Ljava/lang/String;

    check-cast p0, LQ91;

    .line 15
    iget-object p0, p0, LQ91;->a:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {p0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v0}, LV91;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static setPendingPrint(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/printing/Printable;II)V
    .locals 2

    .line 1
    sget-object v0, LV91;->o:LU91;

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, LT91;

    invoke-direct {v1, p0}, LT91;-><init>(Landroid/app/Activity;)V

    check-cast v0, LV91;

    .line 4
    iget-boolean p0, v0, LV91;->m:Z

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, v0, LV91;->j:Lorg/chromium/printing/Printable;

    .line 6
    iput-object v1, v0, LV91;->n:LS91;

    .line 7
    iput p2, v0, LV91;->b:I

    .line 8
    iput p3, v0, LV91;->c:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public askUserForSettings(I)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object p1, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast p1, LV91;

    .line 3
    iget p1, p1, LV91;->l:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-wide v1, p0, Lorg/chromium/printing/PrintingContext;->b:J

    .line 5
    invoke-static {v1, v2, p0, v0}, LJ/N;->M8HtOhJl(JLjava/lang/Object;Z)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast p1, LV91;

    if-eqz p1, :cond_2

    .line 7
    iget-wide v2, p0, Lorg/chromium/printing/PrintingContext;->b:J

    .line 8
    invoke-static {v2, v3, p0, v1}, LJ/N;->M8HtOhJl(JLjava/lang/Object;Z)V

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public getDpi()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast v0, LV91;

    .line 3
    iget v0, v0, LV91;->e:I

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast v0, LV91;

    .line 3
    iget-object v0, v0, LV91;->d:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast v0, LV91;

    .line 3
    iget-object v0, v0, LV91;->f:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v0

    return v0
.end method

.method public getPages()[I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast v0, LV91;

    .line 3
    iget-object v0, v0, LV91;->g:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    check-cast v0, LV91;

    .line 3
    iget-object v0, v0, LV91;->f:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    return v0
.end method

.method public showPrintDialog()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->a:LU91;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, LV91;

    invoke-virtual {v0}, LV91;->c()V

    .line 4
    :cond_0
    iget-wide v0, p0, Lorg/chromium/printing/PrintingContext;->b:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->Mmq2M8tt(JLjava/lang/Object;)V

    return-void
.end method
