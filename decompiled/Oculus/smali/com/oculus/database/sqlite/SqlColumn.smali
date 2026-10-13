.class public Lcom/oculus/database/sqlite/SqlColumn;
.super Ljava/lang/Object;
.source "SqlColumn.java"


# static fields
.field public static final COLUMN_TO_DEFINITION:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLUMN_TO_NAME:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/oculus/database/sqlite/SqlColumn;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROW_ID:Lcom/oculus/database/sqlite/SqlColumn;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn;

    const-string/jumbo v1, "rowid"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/database/sqlite/SqlColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/database/sqlite/SqlColumn;->ROW_ID:Lcom/oculus/database/sqlite/SqlColumn;

    .line 112
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn$1;

    invoke-direct {v0}, Lcom/oculus/database/sqlite/SqlColumn$1;-><init>()V

    sput-object v0, Lcom/oculus/database/sqlite/SqlColumn;->COLUMN_TO_DEFINITION:Lcom/google/common/base/Function;

    .line 120
    new-instance v0, Lcom/oculus/database/sqlite/SqlColumn$2;

    invoke-direct {v0}, Lcom/oculus/database/sqlite/SqlColumn$2;-><init>()V

    sput-object v0, Lcom/oculus/database/sqlite/SqlColumn;->COLUMN_TO_NAME:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oculus/database/sqlite/SqlColumn;->mType:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :cond_3
    check-cast p1, Lcom/oculus/database/sqlite/SqlColumn;

    .line 156
    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlColumn;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/database/sqlite/SqlColumn;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getColumnDefinition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/database/sqlite/SqlColumn;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/database/sqlite/SqlColumn;->mType:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/database/sqlite/SqlColumn;->mName:Ljava/lang/String;

    return-object v0
.end method
