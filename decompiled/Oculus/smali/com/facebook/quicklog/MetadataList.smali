.class public Lcom/facebook/quicklog/MetadataList;
.super Ljava/lang/Object;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/quicklog/MetadataList$Visitor;
    }
.end annotation


# instance fields
.field mMetadata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mMetadataCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadata:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    return-void
.end method

.method private compact()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 110
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/facebook/quicklog/MetadataList$Visitor;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/facebook/quicklog/MetadataList;->compact()V

    .line 83
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 84
    :goto_0
    if-ge v3, v4, :cond_7

    .line 85
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {p1, v0}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitNewCategory(Ljava/lang/String;)V

    move v0, v1

    .line 84
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadata:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/facebook/quicklog/MetadataList;->mMetadata:Ljava/util/ArrayList;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 91
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 92
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 93
    :cond_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 94
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_1

    .line 95
    :cond_2
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 96
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;J)V

    move v0, v2

    goto :goto_1

    .line 97
    :cond_3
    instance-of v5, v1, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 98
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;D)V

    move v0, v2

    goto :goto_1

    .line 99
    :cond_4
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 100
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_1

    .line 101
    :cond_5
    instance-of v5, v1, [Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 102
    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/facebook/quicklog/MetadataList$Visitor;->visitEntry(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto :goto_1

    .line 106
    :cond_7
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    return-void
.end method

.method public startCategory(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/facebook/quicklog/MetadataList;->compact()V

    .line 77
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList;->mMetadataCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    new-instance v1, Lcom/facebook/quicklog/MetadataList$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/quicklog/MetadataList$1;-><init>(Lcom/facebook/quicklog/MetadataList;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/facebook/quicklog/MetadataList;->accept(Lcom/facebook/quicklog/MetadataList$Visitor;)V

    .line 168
    return-object v0
.end method
