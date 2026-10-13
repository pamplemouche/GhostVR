.class public LV91;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LU91;
.implements LO91;


# static fields
.field public static o:LU91;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Landroid/os/ParcelFileDescriptor;

.field public e:I

.field public f:Landroid/print/PrintAttributes$MediaSize;

.field public g:[I

.field public h:LP91;

.field public i:LM91;

.field public j:Lorg/chromium/printing/Printable;

.field public k:LR91;

.field public l:I

.field public m:Z

.field public n:LS91;


# direct methods
.method public constructor <init>(LR91;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LV91;->l:I

    .line 3
    iput-object p2, p0, LV91;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, LV91;->k:LR91;

    .line 5
    iput-object p0, p1, LR91;->a:LO91;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LV91;->d:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iput-object v1, p0, LV91;->d:Landroid/os/ParcelFileDescriptor;

    throw v0

    :catch_0
    :goto_0
    iput-object v1, p0, LV91;->d:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LV91;->h:LP91;

    .line 2
    iput-object v0, p0, LV91;->i:LM91;

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LV91;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LV91;->n:LS91;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, LV91;->j:Lorg/chromium/printing/Printable;

    invoke-interface {v0}, Lorg/chromium/printing/Printable;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    iput-boolean v1, p0, LV91;->m:Z

    .line 5
    iget-object v0, p0, LV91;->k:LR91;

    iget-object v1, p0, LV91;->n:LS91;

    iget-object v2, p0, LV91;->j:Lorg/chromium/printing/Printable;

    invoke-interface {v2}, Lorg/chromium/printing/Printable;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 6
    check-cast v1, LT91;

    .line 7
    iget-object v1, v1, LT91;->a:Landroid/print/PrintManager;

    invoke-virtual {v1, v2, v0, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 8
    iput-object v3, p0, LV91;->n:LS91;

    return-void

    .line 9
    :cond_4
    throw v3
.end method
