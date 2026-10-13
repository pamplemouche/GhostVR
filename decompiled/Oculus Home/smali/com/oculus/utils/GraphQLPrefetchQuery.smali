.class public Lcom/oculus/utils/GraphQLPrefetchQuery;
.super Ljava/lang/Object;
.source "GraphQLPrefetchQuery.java"


# instance fields
.field private docId:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private variables:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "variables"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->docId:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->variables:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->extra:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getVariables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/utils/GraphQLPrefetchQuery;->variables:Ljava/lang/String;

    return-object v0
.end method
