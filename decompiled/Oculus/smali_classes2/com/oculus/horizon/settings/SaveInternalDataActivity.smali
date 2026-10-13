.class public Lcom/oculus/horizon/settings/SaveInternalDataActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SaveInternalDataActivity.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final IGNORED_FOLDERS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mZipFile:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "cache/"

    const-string v1, "lib/"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->IGNORED_FOLDERS:Lcom/google/common/collect/ImmutableSet;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->buildZipFileTask()Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->sendZipFileTask()Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/SaveInternalDataActivity;Landroid/os/AsyncTask;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->buildZipFile(Landroid/os/AsyncTask;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->sendZipFile()V

    return-void
.end method

.method private buildZipFile(Landroid/os/AsyncTask;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 152
    const-string v2, "oculus_saved_data-"

    const-string v3, ".zip"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 154
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 155
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 158
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v3, v4

    :goto_0
    if-ge v3, v9, :cond_0

    aget-object v10, v8, v3

    .line 160
    invoke-virtual {v10}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 162
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 164
    :goto_1
    sget-object v11, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->IGNORED_FOLDERS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v11, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 159
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 162
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_2
    sget-object v11, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v12, "Added folder [%s]"

    invoke-static {v11, v12, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v10, Ljava/util/zip/ZipEntry;

    invoke-direct {v10, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_3
    if-eqz v7, :cond_3

    if-eqz v1, :cond_9

    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    throw v0

    .line 172
    :cond_4
    :try_start_3
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 173
    invoke-static {v10, v7}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 174
    sget-object v10, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v11, "Added file [%s]"

    invoke-static {v10, v11, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 179
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v1, :cond_8

    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 181
    :cond_6
    :goto_5
    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 183
    sget-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not delete temporary file [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v0, v3, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v0, v1

    .line 190
    :goto_6
    return-object v0

    .line 179
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_4

    .line 188
    :cond_a
    sget-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v1, "Zipped data dir to file [%s]"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v2

    .line 190
    goto :goto_6
.end method

.method private buildZipFileTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$3;-><init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V

    return-object v0
.end method

.method private sendZipFile()V
    .locals 7

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oculus_saved_data-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0, v1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    sget v1, Lcom/oculus/horizon/R$string;->internal_data_choose:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v2, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not move file [%s] to [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    .line 227
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 223
    invoke-static {v2, v0, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendZipFileTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$4;-><init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/oculus/horizon/R$layout;->save_internal_data_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->setContentView(I)V

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 62
    sget v1, Lcom/oculus/horizon/R$string;->setting_save_internal_data:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 67
    sget v0, Lcom/oculus/horizon/R$id;->send_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/settings/SaveInternalDataActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$1;-><init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity$2;-><init>(Lcom/oculus/horizon/settings/SaveInternalDataActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    sget-object v0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not delete temporary file [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->mZipFile:Ljava/io/File;

    .line 99
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/SaveInternalDataActivity;->onBackPressed()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
