.class public final Lcom/jakewharton/retrofit/Ok3Client;
.super Ljava/lang/Object;
.source "Ok3Client.java"

# interfaces
.implements Lretrofit/client/Client;


# static fields
.field private static final NO_BODY:[B


# instance fields
.field private final client:Lokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jakewharton/retrofit/Ok3Client;->NO_BODY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/jakewharton/retrofit/Ok3Client;-><init>(Lokhttp3/OkHttpClient;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/jakewharton/retrofit/Ok3Client;->client:Lokhttp3/Call$Factory;

    .line 38
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/jakewharton/retrofit/Ok3Client;-><init>(Lokhttp3/Call$Factory;)V

    .line 31
    return-void
.end method
