.class public Lcom/oculus/browser/acra/ErrorReporter$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/ErrorReporter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter$2;->this$0:Lcom/oculus/browser/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/browser/acra/ErrorReporter$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
