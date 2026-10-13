.class public Lcom/oculus/ocms/library/provider/PublicLibraryProvider;
.super Lcom/oculus/content/OculusPublicReadContentProvider;
.source "PublicLibraryProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/library/provider/PublicLibraryProvider;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/library/provider/PublicLibraryProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/library/provider/PublicLibraryProvider;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/library/database/LibraryStorage;->$ul_$xXXcom_oculus_library_database_LibraryStorage$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/database/LibraryStorage;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicReadContentProvider;-><init>()V

    return-void
.end method

.method private query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 91
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    invoke-virtual {v0, p1}, Lcom/oculus/library/database/LibraryStorage;->get(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    sget-object v0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find entitlement for %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lcom/oculus/library/utils/app/PublicAppsCursor;

    invoke-direct {v0, v2}, Lcom/oculus/library/utils/app/PublicAppsCursor;-><init>(I)V

    .line 97
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/library/utils/app/PublicAppsCursor;->fill(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private queryAll()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    invoke-virtual {v0}, Lcom/oculus/library/database/LibraryStorage;->getAll()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/oculus/library/utils/app/PublicAppsCursor;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/oculus/library/utils/app/PublicAppsCursor;-><init>(I)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/oculus/library/utils/app/PublicAppsCursor;->fill(Ljava/util/Collection;)V

    .line 106
    return-object v1
.end method


# virtual methods
.method protected doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/library/provider/PublicLibraryProvider;)V

    .line 31
    return-void
.end method

.method protected doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p2    # Landroid/content/ContentValues;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/Constants;->getPublicContentTypeFor(Landroid/net/Uri;)Lcom/oculus/ocms/library/provider/ContentType;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v1, Lcom/oculus/ocms/library/provider/PublicLibraryProvider$1;->$SwitchMap$com$oculus$ocms$library$provider$ContentType$QueryMethod:[I

    iget-object v0, v0, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v0}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packageName in uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-direct {p0, v0}, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/PublicLibraryProvider;->queryAll()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFbPermission()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method
