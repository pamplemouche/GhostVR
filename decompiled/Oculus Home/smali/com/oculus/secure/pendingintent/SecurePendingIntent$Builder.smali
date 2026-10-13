.class public Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/pendingintent/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

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

.field private mComponentName:Landroid/content/ComponentName;

.field private mData:Landroid/net/Uri;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 25
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 27
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 29
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 30
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 25
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 27
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 29
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 30
    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 37
    return-void
.end method

.method private static enforceExplicitIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

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
.method public addCategory(Ljava/lang/String;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method

.method public buildCallerInfoForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "flags"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot use existing ComponentName to generate an invalid PendingIntent"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    invoke-static {p1, p2, v1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public buildForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "flags"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    invoke-static {v1}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->enforceExplicitIntent(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 114
    invoke-static {}, Lcom/oculus/secure/pendingintent/SecurePendingIntent;->isOnOrAboveApi15()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Api15Utils;->setSelector(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 117
    :cond_0
    invoke-static {}, Lcom/oculus/secure/pendingintent/SecurePendingIntent;->isOnOrAboveApi16()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    invoke-static {v1, v2}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Api16Utils;->setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    .end local v0    # "category":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public fromIntent(Landroid/content/Intent;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/oculus/secure/pendingintent/SecurePendingIntent;->isOnOrAboveApi16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p1}, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Api16Utils;->getClipData(Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 90
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_1
    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 71
    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 56
    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 46
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "selector"    # Landroid/content/Intent;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 66
    return-object p0
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 61
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oculus/secure/pendingintent/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 51
    return-object p0
.end method
