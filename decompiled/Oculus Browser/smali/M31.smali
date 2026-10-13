.class public LM31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lu21;


# instance fields
.field public A:Landroid/app/Activity;

.field public final B:Z

.field public C:LL31;

.field public D:LK31;

.field public E:LS31;

.field public F:Lw21;

.field public final G:Landroid/util/SparseArray;

.field public final H:Landroid/os/Handler;

.field public I:Ljava/lang/Runnable;

.field public J:Landroid/os/Vibrator;

.field public final w:I

.field public final x:Lorg/chromium/device/nfc/NfcDelegate;

.field public final y:Landroid/nfc/NfcManager;

.field public final z:Landroid/nfc/NfcAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LM31;

    return-void
.end method

.method public constructor <init>(ILorg/chromium/device/nfc/NfcDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LM31;->H:Landroid/os/Handler;

    .line 4
    iput p1, p0, LM31;->w:I

    .line 5
    iput-object p2, p0, LM31;->x:Lorg/chromium/device/nfc/NfcDelegate;

    .line 6
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "android.permission.NFC"

    .line 8
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, LM31;->B:Z

    .line 10
    new-instance p1, LI31;

    invoke-direct {p1, p0}, LI31;-><init>(LM31;)V

    .line 11
    iget-object v0, p0, LM31;->x:Lorg/chromium/device/nfc/NfcDelegate;

    iget v1, p0, LM31;->w:I

    invoke-interface {v0, v1, p1}, Lorg/chromium/device/nfc/NfcDelegate;->a(ILorg/chromium/base/Callback;)V

    .line 12
    iget-boolean p1, p0, LM31;->B:Z

    const-string v0, "NfcImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, LzT;->a:Landroid/content/Context;

    const-string v2, "nfc"

    .line 14
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/nfc/NfcManager;

    iput-object p1, p0, LM31;->y:Landroid/nfc/NfcManager;

    if-nez p1, :cond_1

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "NFC is not supported."

    .line 15
    invoke-static {v0, p2, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iput-object v1, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    goto :goto_1

    :cond_2
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "NFC operations are not permitted."

    .line 18
    invoke-static {v0, p2, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iput-object v1, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    .line 20
    iput-object v1, p0, LM31;->y:Landroid/nfc/NfcManager;

    .line 21
    :goto_1
    sget-object p1, LzT;->a:Landroid/content/Context;

    const-string p2, "vibrator"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, LM31;->J:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public M()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LM31;->e()V

    return-void
.end method

.method public final a()LC21;
    .locals 1

    .line 45
    iget-boolean v0, p0, LM31;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LM31;->A:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, LM31;->y:Landroid/nfc/NfcManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object v0

    return-object v0
.end method

.method public a(ILp21;)V
    .locals 1

    .line 27
    invoke-virtual {p0, p2}, LM31;->a(Le61;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p2, LV21;

    invoke-virtual {p2, p1}, LV21;->a(Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_1
    iget-object p1, p0, LM31;->D:LK31;

    if-nez p1, :cond_2

    const/4 p1, 0x7

    .line 30
    invoke-virtual {p0, p1}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p2, LV21;

    invoke-virtual {p2, p1}, LV21;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    .line 31
    invoke-virtual {p0, p1}, LM31;->b(I)LC21;

    move-result-object p1

    invoke-virtual {p0, p1}, LM31;->a(LC21;)V

    const/4 p1, 0x0

    .line 32
    check-cast p2, LV21;

    invoke-virtual {p2, p1}, LV21;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(ILq21;)V
    .locals 1

    .line 33
    invoke-virtual {p0, p2}, LM31;->a(Le61;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, 0x3

    .line 35
    invoke-virtual {p0, p1}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p2, LZ21;

    invoke-virtual {p2, p1}, LZ21;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p1, 0x0

    .line 37
    check-cast p2, LZ21;

    invoke-virtual {p2, p1}, LZ21;->a(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, LM31;->f()V

    :goto_0
    return-void
.end method

.method public final a(LC21;)V
    .locals 3

    .line 61
    iget-object v0, p0, LM31;->D:LK31;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, LM31;->I:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v2, p0, LM31;->H:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iput-object v1, p0, LM31;->I:Ljava/lang/Runnable;

    .line 65
    :goto_0
    iget-object v0, p0, LM31;->D:LK31;

    .line 66
    iget-object v0, v0, LK31;->c:Ls21;

    if-eqz v0, :cond_2

    check-cast v0, Ld31;

    invoke-virtual {v0, p1}, Ld31;->a(Ljava/lang/Object;)V

    .line 67
    :cond_2
    iput-object v1, p0, LM31;->D:LK31;

    .line 68
    invoke-virtual {p0}, LM31;->f()V

    return-void
.end method

.method public a(LM21;ILt21;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, LM31;->a()LC21;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    move-object v1, p3

    check-cast v1, Lk31;

    invoke-virtual {v1, v0}, Lk31;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 p1, 0x2

    .line 54
    invoke-virtual {p0, p1}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p3, Lk31;

    invoke-virtual {p3, p1}, Lk31;->a(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_2
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 56
    check-cast p3, Lk31;

    invoke-virtual {p3, p1}, Lk31;->a(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, LM31;->g()V

    .line 58
    invoke-virtual {p0}, LM31;->j()V

    return-void
.end method

.method public final a(Landroid/nfc/NdefMessage;)V
    .locals 5

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {p1}, LH31;->a(Landroid/nfc/NdefMessage;)Ll21;

    move-result-object p1

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 71
    :goto_0
    iget-object v3, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 72
    iget-object v3, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM21;

    .line 73
    invoke-virtual {p0, p1, v3}, LM31;->a(Ll21;LM21;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 77
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, LM31;->F:Lw21;

    iget-object v3, p0, LM31;->E:LS31;

    .line 80
    iget-object v3, v3, LS31;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    check-cast v1, Lz21;

    :try_start_1
    invoke-virtual {v1, v2, v3, p1}, Lz21;->a([ILjava/lang/String;Ll21;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NfcImpl"

    const-string v1, "Cannot convert NdefMessage to NdefMessage."

    .line 82
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Ll21;LK21;Ls21;)V
    .locals 6

    .line 2
    invoke-virtual {p0, p3}, LM31;->a(Le61;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 3
    iget-object v2, p1, Ll21;->b:[Lm21;

    if-eqz v2, :cond_a

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p1, Ll21;->b:[Lm21;

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 5
    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v4, v3, Lm21;->b:Ljava/lang/String;

    const-string v5, "empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v4, v3, Lm21;->d:[B

    if-nez v4, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, v3, Lm21;->b:Ljava/lang/String;

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lm21;->b:Ljava/lang/String;

    const-string v5, "opaque"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v3, v3, Lm21;->c:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, p1}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p3, Ld31;

    invoke-virtual {p3, p1}, Ld31;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_b
    iget v0, p2, LK21;->b:I

    if-eq v0, v1, :cond_11

    iget-wide v2, p2, LK21;->c:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_11

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v2, v4

    if-lez v0, :cond_c

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    .line 14
    :cond_c
    iget-object v0, p0, LM31;->D:LK31;

    if-eqz v0, :cond_f

    const/4 v1, 0x5

    .line 15
    invoke-virtual {p0, v1}, LM31;->b(I)LC21;

    move-result-object v1

    .line 16
    iget-object v0, v0, LK31;->c:Ls21;

    if-eqz v0, :cond_d

    check-cast v0, Ld31;

    invoke-virtual {v0, v1}, Ld31;->a(Ljava/lang/Object;)V

    .line 17
    :cond_d
    iget-object v0, p0, LM31;->I:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    goto :goto_5

    .line 18
    :cond_e
    iget-object v1, p0, LM31;->H:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, LM31;->I:Ljava/lang/Runnable;

    .line 20
    :cond_f
    :goto_5
    new-instance v0, LK31;

    invoke-direct {v0, p1, p2, p3}, LK31;-><init>(Ll21;LK21;Ls21;)V

    iput-object v0, p0, LM31;->D:LK31;

    .line 21
    iget-wide v0, p2, LK21;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    .line 22
    :cond_10
    new-instance p1, LJ31;

    invoke-direct {p1, p0}, LJ31;-><init>(LM31;)V

    iput-object p1, p0, LM31;->I:Ljava/lang/Runnable;

    .line 23
    iget-object p3, p0, LM31;->H:Landroid/os/Handler;

    iget-wide v0, p2, LK21;->c:D

    double-to-long v0, v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :goto_6
    invoke-virtual {p0}, LM31;->g()V

    .line 25
    invoke-virtual {p0}, LM31;->i()V

    return-void

    .line 26
    :cond_11
    :goto_7
    invoke-virtual {p0, v1}, LM31;->b(I)LC21;

    move-result-object p1

    check-cast p3, Ld31;

    invoke-virtual {p3, p1}, Ld31;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lo21;)V
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, LM31;->a(Le61;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object v0

    check-cast p1, LR21;

    invoke-virtual {p1, v0}, LR21;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 43
    check-cast p1, LR21;

    invoke-virtual {p1, v0}, LR21;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, LM31;->f()V

    :goto_0
    return-void
.end method

.method public a(Lw21;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM31;->F:Lw21;

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public final a(Le61;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, LM31;->a()LC21;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    invoke-interface {p1, v0}, Le61;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ll21;LM21;)Z
    .locals 7

    .line 83
    iget-object v0, p1, Ll21;->c:Ljava/lang/String;

    iget-object v1, p2, LM21;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 85
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    return v2

    .line 92
    :cond_5
    iget-object v0, p2, LM21;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p2, LM21;->c:Ln21;

    if-nez v0, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x0

    .line 93
    :goto_3
    iget-object v1, p1, Ll21;->b:[Lm21;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 94
    iget-object v1, p2, LM21;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 95
    :cond_8
    iget-object v1, p2, LM21;->d:Ljava/lang/String;

    iget-object v4, p1, Ll21;->b:[Lm21;

    aget-object v4, v4, v0

    iget-object v4, v4, Lm21;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 96
    :goto_5
    iget-object v4, p2, LM21;->c:Ln21;

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    .line 97
    :cond_a
    iget-object v4, v4, Ln21;->b:Ljava/lang/String;

    iget-object v5, p1, Ll21;->b:[Lm21;

    aget-object v5, v5, v0

    iget-object v5, v5, Lm21;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_6
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    return v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    return v2
.end method

.method public final b(I)LC21;
    .locals 1

    .line 1
    new-instance v0, LC21;

    invoke-direct {v0}, LC21;-><init>()V

    .line 2
    iput p1, v0, LC21;->b:I

    return-object v0
.end method

.method public final b(LC21;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, LM31;->a(LC21;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LM31;->E:LS31;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, LM31;->x:Lorg/chromium/device/nfc/NfcDelegate;

    iget v1, p0, LM31;->w:I

    invoke-interface {v0, v1}, Lorg/chromium/device/nfc/NfcDelegate;->a(I)V

    .line 2
    invoke-virtual {p0}, LM31;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, LM31;->C:LL31;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LM31;->C:LL31;

    .line 3
    iget-object v0, p0, LM31;->A:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, LM31;->A:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, LM31;->D:LK31;

    if-nez v0, :cond_0

    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, LM31;->e()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, LM31;->C:LL31;

    if-nez v0, :cond_2

    iget-object v0, p0, LM31;->A:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LM31;->D:LK31;

    if-nez v0, :cond_1

    iget-object v0, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, LL31;

    invoke-direct {v0, p0}, LL31;-><init>(LM31;)V

    iput-object v0, p0, LM31;->C:LL31;

    .line 4
    iget-object v1, p0, LM31;->z:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, LM31;->A:Landroid/app/Activity;

    const/16 v3, 0x10f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 6

    const-string v0, "NfcImpl"

    .line 1
    iget-object v1, p0, LM31;->E:LS31;

    if-eqz v1, :cond_2

    iget-object v2, p0, LM31;->D:LK31;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v1}, LS31;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v1, v1, LS31;->c:Z

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iput-object v2, p0, LM31;->E:LS31;

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 5
    :try_start_1
    iget-object v4, p0, LM31;->E:LS31;

    invoke-virtual {v4}, LS31;->a()V

    .line 6
    iget-object v4, p0, LM31;->E:LS31;

    iget-object v5, p0, LM31;->D:LK31;

    iget-object v5, v5, LK31;->a:Ll21;

    invoke-static {v5}, LH31;->a(Ll21;)Landroid/nfc/NdefMessage;

    move-result-object v5

    .line 7
    iget-object v4, v4, LS31;->b:LR31;

    invoke-interface {v4, v5}, LR31;->a(Landroid/nfc/NdefMessage;)V

    .line 8
    invoke-virtual {p0, v2}, LM31;->b(LC21;)V
    :try_end_1
    .catch LE31; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cannot write data to NFC tag. IO_ERROR."

    .line 9
    invoke-static {v0, v4, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v1}, LM31;->b(I)LC21;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, LM31;->a(LC21;)V

    .line 12
    iput-object v2, p0, LM31;->E:LS31;

    goto :goto_1

    :catch_2
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Cannot write data to NFC tag. Tag is lost."

    .line 13
    invoke-static {v0, v4, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, v1}, LM31;->b(I)LC21;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, LM31;->a(LC21;)V

    .line 16
    iput-object v2, p0, LM31;->E:LS31;

    goto :goto_1

    :catch_3
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Cannot write data to NFC tag. Invalid NdefMessage."

    .line 17
    invoke-static {v0, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0}, LM31;->b(I)LC21;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, LM31;->a(LC21;)V

    .line 20
    iput-object v2, p0, LM31;->E:LS31;

    :cond_2
    :goto_1
    return-void
.end method

.method public final j()V
    .locals 5

    const-string v0, "NfcImpl"

    .line 1
    iget-object v1, p0, LM31;->E:LS31;

    if-eqz v1, :cond_6

    iget-object v1, p0, LM31;->F:Lw21;

    if-eqz v1, :cond_6

    iget-object v1, p0, LM31;->G:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, LM31;->D:LK31;

    if-eqz v1, :cond_1

    iget-object v1, v1, LK31;->b:LK21;

    iget-boolean v1, v1, LK21;->d:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, LM31;->E:LS31;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v1}, LS31;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :catch_0
    iget-boolean v1, v1, LS31;->c:Z

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iput-object v2, p0, LM31;->E:LS31;

    return-void

    .line 7
    :cond_2
    :try_start_1
    iget-object v1, p0, LM31;->E:LS31;

    invoke-virtual {v1}, LS31;->a()V

    .line 8
    iget-object v1, p0, LM31;->E:LS31;

    .line 9
    iget-object v1, v1, LS31;->b:LR31;

    invoke-interface {v1}, LR31;->a()Landroid/nfc/NdefMessage;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Cannot read data from NFC tag. Tag is empty."

    new-array v2, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    move-result v2

    const v4, 0x8000

    if-le v2, v4, :cond_4

    const-string v1, "Cannot read data from NFC tag. NdefMessage exceeds allowed size."

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_4
    invoke-virtual {p0, v1}, LM31;->a(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Cannot read data from NFC tag. IO_ERROR."

    .line 14
    invoke-static {v0, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Cannot read data from NFC tag. Tag is lost."

    .line 15
    invoke-static {v0, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 16
    :cond_5
    throw v2

    :cond_6
    :goto_2
    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LM31;->g()V

    return-void
.end method
