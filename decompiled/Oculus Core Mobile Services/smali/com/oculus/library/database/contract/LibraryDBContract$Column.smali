.class public Lcom/oculus/library/database/contract/LibraryDBContract$Column;
.super Ljava/lang/Object;
.source "LibraryDBContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/database/contract/LibraryDBContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->type:Ljava/lang/String;

    .line 14
    return-void
.end method
