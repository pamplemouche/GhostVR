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
