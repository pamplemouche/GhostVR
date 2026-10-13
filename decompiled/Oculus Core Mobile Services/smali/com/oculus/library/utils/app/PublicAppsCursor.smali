.class public Lcom/oculus/library/utils/app/PublicAppsCursor;
.super Landroid/database/MatrixCursor;
.source "PublicAppsCursor.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_PLATFORM:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->HEAD_TRACKING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/utils/app/PublicAppsCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/library/utils/app/PublicAppsCursor;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public fill(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 27
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    invoke-virtual {v4}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    invoke-virtual {v0}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 28
    invoke-virtual {p0, v2}, Lcom/oculus/library/utils/app/PublicAppsCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
