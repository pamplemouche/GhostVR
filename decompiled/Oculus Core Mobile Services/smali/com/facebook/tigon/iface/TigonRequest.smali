.class public interface abstract Lcom/facebook/tigon/iface/TigonRequest;
.super Ljava/lang/Object;
.source "TigonRequest.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final GET:Ljava/lang/String; = "GET"
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public static final POST:Ljava/lang/String; = "POST"
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# virtual methods
.method public abstract headers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract method()Ljava/lang/String;
.end method

.method public abstract url()Ljava/lang/String;
.end method
