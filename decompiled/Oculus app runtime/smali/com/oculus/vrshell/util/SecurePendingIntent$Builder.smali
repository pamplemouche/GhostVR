.class public Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mData:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelector:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSourceBounds:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 26
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 28
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 30
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 31
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 26
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 28
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 30
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 31
    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private static enforceExplicitIntent(Landroid/content/Intent;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must generate PendingIntent based on an explicit intent."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildCallerInfoForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Cannot use existing ComponentName to generate an invalid PendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildForActivity(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent()Landroid/content/Intent;
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    invoke-static {v0}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->enforceExplicitIntent(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 115
    invoke-static {}, Lcom/oculus/vrshell/util/SecurePendingIntent;->isOnOrAboveApi15()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/oculus/vrshell/util/SecurePendingIntent$Api15Utils;->setSelector(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 118
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/util/SecurePendingIntent;->isOnOrAboveApi16()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    invoke-static {v0, v1}, Lcom/oculus/vrshell/util/SecurePendingIntent$Api16Utils;->setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public fromIntent(Landroid/content/Intent;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/oculus/vrshell/util/SecurePendingIntent;->isOnOrAboveApi16()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/oculus/vrshell/util/SecurePendingIntent$Api16Utils;->getClipData(Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mCategories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/content/ClipData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mData:Landroid/net/Uri;

    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSelector:Landroid/content/Intent;

    return-object p0
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iput-object p1, p0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;->mType:Ljava/lang/String;

    return-object p0
.end method
