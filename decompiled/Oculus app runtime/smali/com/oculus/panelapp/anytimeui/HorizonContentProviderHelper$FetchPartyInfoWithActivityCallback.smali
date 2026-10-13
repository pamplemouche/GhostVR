.class public abstract Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$BaseCallback;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FetchPartyInfoWithActivityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
.end method
