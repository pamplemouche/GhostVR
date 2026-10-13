.class Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope$Api23Utils;
.super Ljava/lang/Object;
.source "AccessibleByAnyAppIntentScope.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lcom/facebook/annotations/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtectionFlagPrivileged()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x10

    return v0
.end method
