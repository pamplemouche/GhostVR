.class final Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FifoSpoolComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/acra/Spool$Descriptor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/acra/ErrorReporter$1;)V
    .locals 0

    .prologue
    .line 2577
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/acra/Spool$Descriptor;Lcom/facebook/acra/Spool$Descriptor;)I
    .locals 4

    .prologue
    .line 2581
    iget-wide v0, p1, Lcom/facebook/acra/Spool$Descriptor;->lastModifiedTime:J

    iget-wide v2, p2, Lcom/facebook/acra/Spool$Descriptor;->lastModifiedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2582
    const/4 v0, 0x0

    .line 2584
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/facebook/acra/Spool$Descriptor;->lastModifiedTime:J

    iget-wide v2, p2, Lcom/facebook/acra/Spool$Descriptor;->lastModifiedTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2577
    check-cast p1, Lcom/facebook/acra/Spool$Descriptor;

    check-cast p2, Lcom/facebook/acra/Spool$Descriptor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;->compare(Lcom/facebook/acra/Spool$Descriptor;Lcom/facebook/acra/Spool$Descriptor;)I

    move-result v0

    return v0
.end method
