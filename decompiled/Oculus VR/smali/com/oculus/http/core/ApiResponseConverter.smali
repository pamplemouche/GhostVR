.class public Lcom/oculus/http/core/ApiResponseConverter;
.super Ljava/lang/Object;
.source "ApiResponseConverter.java"

# interfaces
.implements Lretrofit/converter/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;
    }
.end annotation


# instance fields
.field private final mGsonConverter:Lretrofit/converter/GsonConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    iput-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter;->mGsonConverter:Lretrofit/converter/GsonConverter;

    .line 36
    return-void
.end method
