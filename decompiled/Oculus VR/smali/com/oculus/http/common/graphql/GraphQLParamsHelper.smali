.class public Lcom/oculus/http/common/graphql/GraphQLParamsHelper;
.super Ljava/lang/Object;
.source "GraphQLParamsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/common/graphql/GraphQLParamsHelper$Input;
    }
.end annotation


# static fields
.field private static final GSON_CONVERTER:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/http/common/graphql/GraphQLParamsHelper;->GSON_CONVERTER:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
