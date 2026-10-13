.class Lcom/facebook/quicklog/MetadataList$1;
.super Ljava/lang/Object;
.source "MetadataList.java"

# interfaces
.implements Lcom/facebook/quicklog/MetadataList$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/quicklog/MetadataList;->toMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/quicklog/MetadataList;

.field final synthetic val$res:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/facebook/quicklog/MetadataList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/quicklog/MetadataList$1;->this$0:Lcom/facebook/quicklog/MetadataList;

    iput-object p2, p0, Lcom/facebook/quicklog/MetadataList$1;->val$res:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEntry(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public visitEntry(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public visitEntry(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public visitEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public visitEntry(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public visitEntry(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public visitNewCategory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    .line 135
    iget-object v0, p0, Lcom/facebook/quicklog/MetadataList$1;->val$res:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/quicklog/MetadataList$1;->mCurrMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method
