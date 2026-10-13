.class public Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/pendingintent/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mData:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSelector:Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSourceBounds:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 22
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 24
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 26
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 27
    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    .line 30
    return-void
.end method

.method private static enforceExplicitIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must generate PendingIntent based on an explicit intent."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public buildForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    invoke-static {v1}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->enforceExplicitIntent(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 111
    invoke-static {}, Lcom/facebook/secure/pendingintent/SecurePendingIntent;->isOnOrAboveApi15()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Api15Utils;->setSelector(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/facebook/secure/pendingintent/SecurePendingIntent;->isOnOrAboveApi16()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    invoke-static {v1, v0}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Api16Utils;->setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 120
    :cond_2
    return-object v1
.end method

.method public setAction(Ljava/lang/String;)Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 53
    return-object p0
.end method
